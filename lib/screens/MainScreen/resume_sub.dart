import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:precisely/Storage_Services/services.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ResumeSubCard extends StatefulWidget {
  @override
  _ResumeSubCardState createState() => _ResumeSubCardState();
}

class _ResumeSubCardState extends State<ResumeSubCard> {
  File? file;
  UploadTask? task;

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result == null) return;
    final path = result.files.single.path!;
    setState(() {
      file = File(path);
    });
  }

  uploadFile() {
    if (file == null) return;
    final filename = basename(file!.path);
    final destination = 'files/$filename';
    task = MyFirebaseStorage.uploadFile(destination, file!);
    setState(() {});
  }

  Widget uploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
      stream: task.snapshotEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final snap = snapshot.data!;
          final progress = snap.bytesTransferred / snap.totalBytes;
          final uploadPercent = (progress * 100).toStringAsFixed(2);
          return Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$uploadPercent % Uploaded",
                style: TextStyle(fontSize: 20, color: Colors.blue[300]),
              ),
            ),
          );
        } else {
          return Container(
            child: Text("uploading",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          );
        }
      });

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'No File Selected';

    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          'Resume',
          style: TextStyle(
            letterSpacing: 0.02,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          colors: [
            Color(0xffFFE2CD),
            Color(0xfffec2e7),
            Color(0XffC9E7FF),
            Color(0xff86FEF4),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset(
            'assets/Vector1.png',
            //scale: 1.0,
            height: 25.0,
            width: 25.0,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueGrey),
            ),
            child: new IconButton(
                onPressed: () => print('Clicked..'),
                icon: new Image.asset('assets/info1.png')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey)),
            child: new IconButton(
              onPressed: () => print('Clicked..'),
              icon: new Image.asset('assets/Vector.png'),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff1E1E1E),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: new SizedBox(
                      child: new IconButton(
                        iconSize: 200,
                        //padding: new EdgeInsets.fromLTRB(0, 50, 220, 150),
                        color: Colors.white,
                        icon: new Image.asset("assets/upload.png"),
                        onPressed: () async {
                          await selectFile();
                          uploadFile();
                        },
                      )),
                ),
                task != null ? uploadStatus(task!) : Container(),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                  child: Text(fileName,
                      style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 20,
                          color: Colors.white)),
                ),
          Positioned(
            top: 305,
            left: 110,
            child: Container(
              height: 39,
              width: 204,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      stops: [100, 100],
                      colors: [Color(0xff32383E), Color(0xff32383E)])),
              child: OutlineGradientButton(
                onTap: () {
                  print("hello");
                },
                backgroundColor: Colors.transparent,
                child: Text('Request Improvements',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFFE2CD),
                    Color(0xffFEC2E7),
                    Color(0xffC9E7FF),
                    Color(0xff86FEF4),
                  ],
                ),
                strokeWidth: 2,
                padding:
                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                radius: Radius.circular(8),
              ),
            ),
          ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 400,
                  height: 200,
                  child: Card(
                    color: Colors.black12,
                    child: Center(
                      child: Text(
                        'No Tips Yet',
                        style: TextStyle(color: Colors.white),
                      ), //Text
                    ), //Center
                  ),
                )
              ],
            )),
      ),
    );
  }
}
