import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:path/path.dart';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:precisely/Storage_Services/services.dart';
import 'package:precisely/assets/figmauploadicon_icons.dart';

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
            child: Text("Successfully Uploaded"),
          );
        }
      });

  @override
  Widget build(BuildContext context) {
    final fileName = file != null ? basename(file!.path) : 'No File Selected';

    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      body: Container(
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
                padding: new EdgeInsets.fromLTRB(0, 50, 220, 150),
                color: Colors.white,
                icon: new Icon(Figmauploadicon.arrow___down, size: 180.0),
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
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Request Improvement",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.amber,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 400,
              height: 400,
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
