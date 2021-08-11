// // @dart=2.9
// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:easy_gradient_text/easy_gradient_text.dart';
// import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'package:precisely/screens/OtpAuth.dart';
//
//
//
// class PhoneNum extends StatelessWidget {
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
//               Padding(
//                 padding: const EdgeInsets.only(top: 50),
//                 child: IntlPhoneField(
//                   autofocus: true,
//                   countryCodeTextColor: Color(0xffFFFFFF),
//                   dropdownDecoration: BoxDecoration(color: Color(0xff1E1E1E)),
//                   keyboardType: TextInputType.number,
//                   dropDownArrowColor: Color(0xffFFFFFF),
//                   decoration: InputDecoration(
//                     filled: true,
//                     focusColor: Colors.white,
//                     labelText: 'Phone Number',
//                     labelStyle: TextStyle(color: Color(0xffFFFFFF)),
//                     border: OutlineInputBorder(
//                       borderSide:
//                       BorderSide(width: 2, color: Color(0xffFFFFFF)),
//                     ),
//                   ),
//                   initialCountryCode: 'IN',
//                   style: TextStyle(color: Color(0xffFFFFFF)),
//                   onChanged: (phone) {
//                     print(phone.completeNumber);
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 500,
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
//                     MaterialPageRoute(builder: (context) => OtpAuth()),
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