// import 'package:flutter/material.dart';
// import 'package:precisely/utils/progress_bar.dart';
//
// import '../HomeScreen.dart';
//
//
// class PersonalDetails3 extends StatefulWidget {
//   const PersonalDetails3({Key? key, required this.value}) : super(key: key);
//   final int value;
//
//   @override
//   _PersonalDetails3State createState() => _PersonalDetails3State();
// }
//
// class _PersonalDetails3State extends State<PersonalDetails3> {
//   @override
//   Widget build(BuildContext context) {
//     // var screenSize = MediaQuery.of(context).size;
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
//                                 "4 words that describe you",
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               TextFormField(
//                                 // The validator receives the text that the user has entered.
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.black,
//                                   filled: true,
//                                   // hintText: "",
//                                   hintStyle: TextStyle(color: Colors.white),
//                                   floatingLabelBehavior:
//                                   FloatingLabelBehavior.always,
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(20),
//                                     borderSide: BorderSide(
//                                       color: Colors.red,
//                                     ),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(20),
//                                     borderSide: BorderSide(
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 maxLines: 8,
//                               ),
//                               SizedBox(
//                                 height: 50,
//                               ),
//                               Text(
//                                 "Who inspires you - \n(Select personality)",
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               TextFormField(
//                                 // The validator receives the text that the user has entered.
//                                 decoration: InputDecoration(
//                                   fillColor: Colors.black,
//                                   filled: true,
//                                   // hintText: "",
//                                   hintStyle: TextStyle(color: Colors.white),
//                                   floatingLabelBehavior:
//                                   FloatingLabelBehavior.always,
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(20),
//                                     borderSide: BorderSide(
//                                       color: Colors.red,
//                                     ),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(20),
//                                     borderSide: BorderSide(
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                                 maxLines: 8,
//                               ),
//                               SizedBox(
//                                 height: 20,
//                               ),
//                               SizedBox(
//                                 height: 50,
//                               ),
//                               Align(
//                                 alignment: Alignment.centerRight,
//                                 child: ElevatedButton(
//                                   onPressed: () {
//                                     Navigator.of(context).push(
//                                       MaterialPageRoute(
//                                         builder: (context) => HomeScreen(
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
//                                     'Finish',
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
