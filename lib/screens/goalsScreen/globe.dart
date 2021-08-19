// import 'package:flutter/material.dart';
// import 'package:precisely/assets/figmauploadicon_icons.dart';
// import 'package:precisely/screens/goalsScreen/engineering.dart';
//
// class Globe extends StatefulWidget {
//   const Globe({Key? key}) : super(key: key);
//
//   @override
//   _GlobeState createState() => _GlobeState();
// }
//
// class _GlobeState extends State<Globe> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//           icon: Icon(
//             Figmauploadicon.backButton,
//             size: 15,
//           ),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//       ),
//       body: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         foregroundDecoration: BoxDecoration(
//             gradient: RadialGradient(
//               center: Alignment(-1.9, -0.06),
//               radius: 1.2,
//               colors: [
//                 Color(0xff759952).withOpacity(0.3),
//                 Color(0xff22bd99).withOpacity(0.7),
//                 Colors.transparent
//               ],
//             )),
//         child: Stack(
//           children: [
//             Positioned(
//               top: -20,
//               left: 150,
//               child: Image(
//                 image: AssetImage('assets/globe.png'),
//               ),
//             ),
//             Container(
//               child: Positioned(
//                 top: 600,
//                 left: 30,
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         Text(
//                           'I N D I A',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.w400,
//                             fontFamily: 'Circular Std',
//                             fontSize: 42,
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                               color: Colors.black,
//                               borderRadius: BorderRadius.circular(10)
//                           ),
//                           child: Column(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(12),
//                                         color: Colors.white10,
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(20.0),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               "\$1M",
//                                               style: TextStyle(
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.w700,
//                                                   fontFamily: 'Circular Std',
//                                                   color: Colors.white),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                             SizedBox(
//                                               height: 10,
//                                             ),
//                                             Text(
//                                               'Average \n Fees',
//                                               style: TextStyle(
//                                                   fontSize: 10,
//                                                   fontWeight: FontWeight.w400,
//                                                   fontFamily: 'Circular Std',
//                                                   color: Colors.white),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(12),
//                                         color: Colors.white10,
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.all(20.0),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               "13",
//                                               style: TextStyle(
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w700,
//                                                 fontFamily: 'Circular Std',
//                                                 color: Colors.white,
//                                               ),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                             SizedBox(
//                                               height: 10,
//                                             ),
//                                             Text(
//                                               'No. of \n University',
//                                               style: TextStyle(
//                                                   fontSize: 10,
//                                                   fontWeight: FontWeight.w400,
//                                                   fontFamily: 'Circular Std',
//                                                   color: Colors.white),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
//                                 child: Row(
//                                   children: [
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(12),
//                                         color: Colors.white10,
//                                       ),
//                                       child: Padding(
//                                         padding:
//                                         const EdgeInsets.fromLTRB(20, 20, 10, 20),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               "922",
//                                               style: TextStyle(
//                                                   fontSize: 18,
//                                                   fontWeight: FontWeight.w700,
//                                                   fontFamily: 'Circular Std',
//                                                   color: Colors.white),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                             SizedBox(
//                                               height: 10,
//                                             ),
//                                             Text(
//                                               'Immigration\n Student',
//                                               style: TextStyle(
//                                                   fontSize: 10,
//                                                   fontWeight: FontWeight.w400,
//                                                   fontFamily: 'Circular Std',
//                                                   color: Colors.white),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(
//                                       width: 10,
//                                     ),
//                                     Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(12),
//                                         color: Colors.white10,
//                                       ),
//                                       child: Padding(
//                                         padding:
//                                         const EdgeInsets.fromLTRB(30, 20, 20, 20),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               "\$20k",
//                                               style: TextStyle(
//                                                 fontSize: 18,
//                                                 fontWeight: FontWeight.w700,
//                                                 fontFamily: 'Circular Std',
//                                                 color: Colors.white,
//                                               ),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                             SizedBox(
//                                               height: 10,
//                                             ),
//                                             Text(
//                                               'Living \n Cost',
//                                               style: TextStyle(
//                                                   fontSize: 10,
//                                                   fontWeight: FontWeight.w400,
//                                                   fontFamily: 'Circular Std',
//                                                   color: Colors.white),
//                                               textAlign: TextAlign.center,
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       child: Padding(
//                         padding: const EdgeInsets.fromLTRB(40, 75, 0, 30),
//                         child: Column(
//                           children: [
//                             Text(
//                               'Capital',
//                               style: TextStyle(
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.normal,
//                                   fontFamily: 'Circular Std',
//                                   color: Colors.white),
//                               textAlign: TextAlign.center,
//                             ),
//                             Text(
//                               'DELHI',
//                               style: TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.w400,
//                                   fontFamily: 'Circular Std',
//                                   color: Colors.white),
//                               textAlign: TextAlign.center,
//                             ),
//                             SizedBox(height: 20,),
//                             CircleAvatar(
//                               backgroundColor: Colors.black,
//                               backgroundImage: NetworkImage(
//                                   'https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/1200px-Flag_of_India.svg.png'),
//                               radius: 20,
//                             ),
//                             SizedBox(height: 20,),
//                             ElevatedButton(onPressed: () {Navigator.of(context).push(
//                                 MaterialPageRoute(builder: (context) => Engineering())
//                             );}, child: Text('Explore', style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w700,
//                                 fontFamily: 'Circular Std',
//                                 color: Colors.black),
//                               textAlign: TextAlign.center,),
//                               style: ElevatedButton.styleFrom(primary: Color(0xff24C785),
//                                   padding: EdgeInsets.symmetric(horizontal: 50, )),)
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//       backgroundColor: Color(0xFF1E1E1E),
//     );
//   }
// }
