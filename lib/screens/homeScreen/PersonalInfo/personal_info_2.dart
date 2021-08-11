// import 'package:flutter/material.dart';
// import 'package:precisely/utils/progress_bar.dart';
//
// import 'personal_info_3.dart';
//
// class PersonalDetails2 extends StatefulWidget {
//   const PersonalDetails2({Key? key, required this.value}) : super(key: key);
//   final int value;
//
//   @override
//   _PersonalDetails2State createState() => _PersonalDetails2State();
// }
//
// class _PersonalDetails2State extends State<PersonalDetails2> {
//   @override
//   Widget build(BuildContext context) {
//     // var screenSize = MediaQuery.of(context).size;
//     // int value = 0;
//     // void complete() {
//     //   setState(() {
//     //     value = 10;
//     //   });
//     // }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Personal Info"),
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: Icon(Icons.arrow_back),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         centerTitle: false,
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.info),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.chat),
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(48.0),
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Container(
//               height: 50.0,
//               alignment: Alignment.center,
//               child: ProgressBar(
//                 value: widget.value,
//               ),
//             ),
//           ),
//         ),
//       ),
//       backgroundColor: Color(0xFF1E1E1E),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.all(26.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(25),
//                     color: Color(0xFF32383E),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                       color: Colors.transparent,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(20),
//                           side: BorderSide(color: Colors.black, width: 2)),
//                       child: Padding(
//                         padding: const EdgeInsets.all(20.0),
//                         child: Form(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text("Important",
//                                   style: TextStyle(
//                                       fontSize: 20, color: Colors.grey)),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "DOB",
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               SizedBox(
//                                 height: 50,
//                                 child: TextFormField(
//                                   // The validator receives the text that the user has entered.
//                                   decoration: InputDecoration(
//                                     contentPadding: EdgeInsets.symmetric(
//                                         vertical: 5, horizontal: 15),
//                                     fillColor: Colors.black,
//                                     filled: true,
//                                     hintText: "DOB",
//                                     hintStyle: TextStyle(color: Colors.grey),
//                                     floatingLabelBehavior:
//                                     FloatingLabelBehavior.always,
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.red,
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     return null;
//                                   },
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "Citizenship",
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               SizedBox(
//                                 height: 50,
//                                 child: TextFormField(
//                                   // The validator receives the text that the user has entered.
//                                   decoration: InputDecoration(
//                                     contentPadding: EdgeInsets.symmetric(
//                                         vertical: 5, horizontal: 15),
//                                     fillColor: Colors.black,
//                                     filled: true,
//                                     hintText: "Citizenship",
//                                     hintStyle: TextStyle(color: Colors.grey),
//                                     floatingLabelBehavior:
//                                     FloatingLabelBehavior.always,
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.red,
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     return null;
//                                   },
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "Sex",
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               SizedBox(
//                                 height: 50,
//                                 child: TextFormField(
//                                   // The validator receives the text that the user has entered.
//                                   decoration: InputDecoration(
//                                     contentPadding: EdgeInsets.symmetric(
//                                         vertical: 5, horizontal: 15),
//                                     fillColor: Colors.black,
//                                     filled: true,
//                                     hintText: "Sex",
//                                     hintStyle: TextStyle(color: Colors.grey),
//                                     floatingLabelBehavior:
//                                     FloatingLabelBehavior.always,
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.red,
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     return null;
//                                   },
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               Text(
//                                 "Marital Status",
//                                 style: TextStyle(
//                                   fontSize: 30,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               SizedBox(
//                                 height: 50,
//                                 child: TextFormField(
//                                   // The validator receives the text that the user has entered.
//                                   decoration: InputDecoration(
//                                     contentPadding: EdgeInsets.symmetric(
//                                         vertical: 5, horizontal: 15),
//                                     fillColor: Colors.black,
//                                     filled: true,
//                                     hintText: "Marital Status",
//                                     hintStyle: TextStyle(color: Colors.grey),
//                                     floatingLabelBehavior:
//                                     FloatingLabelBehavior.always,
//                                     border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.red,
//                                       ),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(20),
//                                       borderSide: BorderSide(
//                                         color: Colors.white,
//                                       ),
//                                     ),
//                                   ),
//                                   validator: (value) {
//                                     if (value == null || value.isEmpty) {
//                                       return 'Please enter some text';
//                                     }
//                                     return null;
//                                   },
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 50,
//                               ),
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     // complete();
//                                     Navigator.of(context).push(
//                                       MaterialPageRoute(
//                                         builder: (context) => PersonalDetails3(
//                                           value: widget.value + 10,
//                                         ),
//                                       ),
//                                     );
//                                   },
//                                   style: ElevatedButton.styleFrom(
//                                       primary: Colors
//                                           .black, //background color of button
//                                       side: BorderSide(
//                                         width: 3,
//                                         color: Colors.yellowAccent,
//                                       ), //border width and color
//                                       elevation: 3, //elevation of button
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius:
//                                           BorderRadius.circular(10)),
//                                       padding: EdgeInsets.symmetric(
//                                           vertical: 15, horizontal: 30)),
//                                   child: Text(
//                                     'Next',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
