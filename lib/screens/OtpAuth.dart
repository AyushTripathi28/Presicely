// // @dart=2.9
// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:easy_gradient_text/easy_gradient_text.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
// import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'package:precisely/screens/NameEmail.dart';
//
//
//
// class OtpAuth extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: GradientText(
//           text: "Precisely",
//           colors: [
//             Color(0xffFFE2CD),
//             Color(0xffFEC2E7),
//             Color(0xffC9E7FF),
//             Color(0xff86FEF4),
//             Color(0xffFFFFFF)
//           ],
//           style: TextStyle(
//             fontSize: 22,
//             fontWeight: FontWeight.w700,
//           ),
//         ),
//         backgroundColor: Color(0xff1E1E1E),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           color: Color(0xff1E1E1E),
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 180,
//               ),
//               OTPTextField(
//                 length: 6,
//                 fieldStyle: FieldStyle.box,
//                 textFieldAlignment: MainAxisAlignment.center,
//                 width: MediaQuery.of(context).size.width,
//                 fieldWidth: 50,
//                 style: TextStyle(color: Colors.white),
//                 keyboardType: TextInputType.number,
//                 otpFieldStyle: OtpFieldStyle(
//                   borderColor: Colors.white,
//                   backgroundColor: Colors.black,
//                 ),
//               ),
//               SizedBox(
//                 height: 350,
//               ),
//               OutlineGradientButton(
//                 child: Text('Submit',
//                     style: TextStyle(
//                         color: Color(0xffFFFFFF),
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400)),
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => NameEmail()),
//                   );
//                 },
//                 gradient: LinearGradient(colors: [
//                   Color(0xffFFE2CD),
//                   Color(0xffFEC2E7),
//                   Color(0xffC9E7FF),
//                   Color(0xff86FEF4)
//                 ]),
//                 strokeWidth: 2,
//                 padding: EdgeInsets.symmetric(horizontal: 39, vertical: 12),
//                 radius: Radius.circular(8),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }