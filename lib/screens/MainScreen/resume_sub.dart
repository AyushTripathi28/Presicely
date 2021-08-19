import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';



class ResumeSubCard extends StatefulWidget {
  @override
  _ResumeSubCardState createState() => _ResumeSubCardState();
}

class _ResumeSubCardState extends State<ResumeSubCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff1E1E1E),
          title: Text(
            "Resume Upload",
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          leading: IconButton(
            icon: Image.asset("assets/Icon-1.png"),
            onPressed: () {
              print("hello");
            },
            iconSize: 3,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white60, width: 0.2)),
                child: IconButton(
                  icon: Image.asset("assets/Icon-2.png"),
                  onPressed: () {
                    print("hello");
                  },
                  iconSize: 3,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 34),
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white60, width: 0.2)),
                child: IconButton(
                  icon: Image.asset("assets/Icon-3.png"),
                  onPressed: () {
                    print("hello");
                  },
                  iconSize: 3,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1.1,
            width: MediaQuery.of(context).size.width * 100,
            child: Stack(
              children: [
                Container(
                  color: Color(0xff1E1E1E),
                ),
                Container(
                  height: 319,
                  decoration: new BoxDecoration(
                    color: Color(0xff000000),
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 55.0)),
                  ),
                  child: Image.asset(
                    "assets/Resume-1.png",
                  ),
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
                Positioned(
                  top: 368,
                  right: 18,
                  left: 18,
                  bottom: 58,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Color(0xff141414),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "No Tips Yet",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}



// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
//
// import 'package:path/path.dart';
//
// import 'package:flutter/material.dart';
// import 'package:file_picker/file_picker.dart';
// import 'package:precisely/Storage_Services/services.dart';
// import 'package:precisely/assets/figmauploadicon_icons.dart';
//
// class ResumeSubCard extends StatefulWidget {
//   @override
//   _ResumeSubCardState createState() => _ResumeSubCardState();
// }
//
// class _ResumeSubCardState extends State<ResumeSubCard> {
//   File? file;
//   UploadTask? task;
//
//   Future selectFile() async {
//     final result = await FilePicker.platform.pickFiles(allowMultiple: false);
//     if (result == null) return;
//     final path = result.files.single.path!;
//     setState(() {
//       file = File(path);
//     });
//   }
//
//   uploadFile() {
//     if (file == null) return;
//     final filename = basename(file!.path);
//     final destination = 'files/$filename';
//     task = MyFirebaseStorage.uploadFile(destination, file!);
//     setState(() {});
//   }
//
//   Widget uploadStatus(UploadTask task) => StreamBuilder<TaskSnapshot>(
//       stream: task.snapshotEvents,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           final snap = snapshot.data!;
//           final progress = snap.bytesTransferred / snap.totalBytes;
//           final uploadPercent = (progress * 100).toStringAsFixed(2);
//           return Container(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 "$uploadPercent % Uploaded",
//                 style: TextStyle(fontSize: 20, color: Colors.blue[300]),
//               ),
//             ),
//           );
//         } else {
//           return Container(
//             child: Text("Successfully Uploaded"),
//           );
//         }
//       });
//
//   @override
//   Widget build(BuildContext context) {
//     final fileName = file != null ? basename(file!.path) : 'No File Selected';
//
//     return Scaffold(
//       backgroundColor: Color(0xff1E1E1E),
//       body: Container(
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
//               child: new SizedBox(
//                   child: new IconButton(
//                 padding: new EdgeInsets.fromLTRB(0, 50, 220, 150),
//                 color: Colors.white,
//                 icon: new Icon(Figmauploadicon.arrow___down, size: 180.0),
//                 onPressed: () async {
//                   await selectFile();
//                   uploadFile();
//                 },
//               )),
//             ),
//             task != null ? uploadStatus(task!) : Container(),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
//               child: Text(fileName,
//                   style: TextStyle(
//                       fontWeight: FontWeight.w100,
//                       fontSize: 20,
//                       color: Colors.white)),
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text(
//                 "Request Improvement",
//                 style: TextStyle(color: Colors.black),
//               ),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.amber,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10)),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             SizedBox(
//               width: 400,
//               height: 400,
//               child: Card(
//                 color: Colors.black12,
//                 child: Center(
//                   child: Text(
//                     'No Tips Yet',
//                     style: TextStyle(color: Colors.white),
//                   ), //Text
//                 ), //Center
//               ),
//             )
//           ],
//         )),
//       ),
//     );
//   }
// }
