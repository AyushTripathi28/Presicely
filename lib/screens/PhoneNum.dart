import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:precisely/screens/NameEmail.dart';


enum OtpAuthState{
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginScreen extends StatefulWidget {
//  const LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  OtpAuthState currentState = OtpAuthState.SHOW_MOBILE_FORM_STATE;

  final numbercontroller = TextEditingController();
  final otpcontroller = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  late String verificationId;

  bool showLoading = false;

  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async{
    setState(() {
      showLoading = true;
    });

    try{
      final authCredential = await _auth.signInWithCredential(phoneAuthCredential);

      setState(() {
        showLoading = false;
      });

      if(authCredential.user != null){
        Navigator.push(context, MaterialPageRoute(builder: (context) => NameEmail()));
      }

    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });

      //var showSnackBar = _Scaffoldkey.currentState!.showSnackBar(SnackBar(content: Text(e.message)));
    }
  }


  getMobileFormWidget(context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Spacer(),
          TextField(
            controller: numbercontroller,
            decoration: InputDecoration(
              hintText: "Enter mobile phone",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async{

              setState(() {
                showLoading = true;
              });

              await _auth.verifyPhoneNumber(
                phoneNumber: numbercontroller.text,
                verificationCompleted: (phoneAuthCredential) async{
                  setState(() {
                    showLoading = false;
                  });
                  //signInWithPhoneAuthCredential(phoneAuthCredential);
                },
                verificationFailed: (verificationFailed) async{
                  setState(() {
                    showLoading = false;
                  });
                  //_Scaffoldkey.currentState!.showSnackBar(SnackBar(content: Text(verificationFailed.message)));
                },
                codeSent: (verificationId, resendingToken) async{
                  setState(() {
                    showLoading = false;
                    currentState = OtpAuthState.SHOW_OTP_FORM_STATE;
                    this.verificationId = verificationId;
                  });
                },
                codeAutoRetrievalTimeout: (verificationId) async{
                },
              );
            },
            child: Text("Get otp"),
            style: ElevatedButton.styleFrom(
                primary: Colors.blue
            ),
          )
        ]
    );
  }

  getOtpFormWidget(context){
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Spacer(),
          TextField(
            controller: otpcontroller,
            decoration: InputDecoration(
              hintText: "Enter OTP",

            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async{
              PhoneAuthCredential phoneAuthCredential =
              PhoneAuthProvider.credential(
                  verificationId: verificationId, smsCode: otpcontroller.text);

              signInWithPhoneAuthCredential(phoneAuthCredential);
            },
            child: Text("Verify"),
            style: ElevatedButton.styleFrom(
                primary: Colors.grey
            ),
          )
        ]
    );
  }

  final GlobalKey<ScaffoldState> _Scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _Scaffoldkey,
        body: Container(
          child: showLoading
              ? Center(
            child: CircularProgressIndicator(),
          )
              : currentState == OtpAuthState.SHOW_MOBILE_FORM_STATE
              ?getMobileFormWidget(context)
              :getOtpFormWidget(context),
          padding: const EdgeInsets.all(30),
        )
    );
  }
}





// import 'dart:ffi';
// import 'package:outline_gradient_button/outline_gradient_button.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:precisely/screens/NameEmail.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:otp_text_field/otp_field.dart';
// import 'package:otp_text_field/otp_text_field.dart';
// import 'package:otp_text_field/style.dart';
//
//
//
// enum OtpAuthState{
//   SHOW_MOBILE_FORM_STATE,
//   SHOW_OTP_FORM_STATE,
// }
//
// class LoginScreen extends StatefulWidget {
// //  const LoginScreen({Key key}) : super(key: key);
//
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//
//   OtpAuthState currentState = OtpAuthState.SHOW_MOBILE_FORM_STATE;
//
//   final numbercontroller = TextEditingController();
//   final otpcontroller = TextEditingController();
//
//   FirebaseAuth _auth = FirebaseAuth.instance;
//
//   late String verificationId;
//
//   bool showLoading = false;
//
//   void signInWithPhoneAuthCredential(
//       PhoneAuthCredential phoneAuthCredential) async{
//     setState(() {
//       showLoading = true;
//     });
//
//     try{
//       final authCredential = await _auth.signInWithCredential(phoneAuthCredential);
//
//       setState(() {
//         showLoading = false;
//       });
//
//       if(authCredential.user != null){
//         Navigator.push(context, MaterialPageRoute(builder: (context) => NameEmail()));
//       }
//
//     } on FirebaseAuthException catch (e) {
//       setState(() {
//         showLoading = false;
//       });
//
//       //var showSnackBar = _Scaffoldkey.currentState!.showSnackBar(SnackBar(content: Text(e.message)));
//     }
//   }
//
//
//   getMobileFormWidget(context){
//     return Container(
//       // height: MediaQuery.of(context).size.height,
//       // width: MediaQuery.of(context).size.width,
//       child: SingleChildScrollView(
//         child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 width: MediaQuery.of(context).size.width,
//                   color: Color(0xff1E1E1E),
//                     child: Column(
//                   children: <Widget>[
//                     Padding(
//                     padding: const EdgeInsets.only(top: 50),
//                       child: IntlPhoneField(
//                         autofocus: true,
//                         countryCodeTextColor: Color(0xffFFFFFF),
//                         dropdownDecoration: BoxDecoration(color: Color(0xff1E1E1E)),
//                         keyboardType: TextInputType.number,
//                         dropDownArrowColor: Color(0xffFFFFFF),
//                         decoration: InputDecoration(
//                         filled: true,
//                         focusColor: Colors.white,
//                         labelText: 'Phone Number',
//                         labelStyle: TextStyle(color: Color(0xffFFFFFF)),
//                         border: OutlineInputBorder(
//                         borderSide: BorderSide(width: 2, color: Color(0xffFFFFFF)),
//                           ),
//                       ),
//                     initialCountryCode: 'IN',
//               style: TextStyle(color: Color(0xffFFFFFF)),
//               onChanged: (phone) {
//             print(phone.completeNumber);
//           },
//         ),
//         )]
//         )
//         ),
//             SizedBox(
//               height: 20,
//             ),
//               ElevatedButton(
//                 onPressed: () async{
//
//                   setState(() {
//                     showLoading = true;
//                   });
//
//                   await _auth.verifyPhoneNumber(
//                     phoneNumber: numbercontroller.text,
//                     verificationCompleted: (phoneAuthCredential) async{
//                       setState(() {
//                         showLoading = false;
//                       });
//                       //signInWithPhoneAuthCredential(phoneAuthCredential);
//                     },
//                     verificationFailed: (verificationFailed) async{
//                       setState(() {
//                         showLoading = false;
//                       });
//                       //_Scaffoldkey.currentState!.showSnackBar(SnackBar(content: Text(verificationFailed.message)));
//                     },
//                     codeSent: (verificationId, resendingToken) async{
//                       setState(() {
//                         showLoading = false;
//                         currentState = OtpAuthState.SHOW_OTP_FORM_STATE;
//                         this.verificationId = verificationId;
//                       });
//                     },
//                     codeAutoRetrievalTimeout: (verificationId) async{
//                     },
//                   );
//                 },
//                 child: Text("Get otp"),
//                 style: ElevatedButton.styleFrom(
//                     primary: Colors.blue
//                 ),
//               )
//         ]),
//       ),
//     );
//   }
//
//   getOtpFormWidget(context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       width: MediaQuery.of(context).size.width,
//       child: SingleChildScrollView(
//         child: Column(
//             children: [
//               Container(
//                 height: MediaQuery
//                     .of(context)
//                     .size
//                     .height,
//                 width: MediaQuery
//                     .of(context)
//                     .size
//                     .width,
//                 color: Color(0xff1E1E1E),
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(
//                       height: 180,
//                     ),
//                     OTPTextField(
//                       length: 6,
//                       fieldStyle: FieldStyle.box,
//                       textFieldAlignment: MainAxisAlignment.center,
//                       width: MediaQuery
//                           .of(context)
//                           .size
//                           .width,
//                       fieldWidth: 50,
//                       style: TextStyle(color: Colors.white),
//                       keyboardType: TextInputType.number,
//                       otpFieldStyle: OtpFieldStyle(
//                         borderColor: Colors.white,
//                         backgroundColor: Colors.black,
//                       ),
//                     ),
//                     SizedBox(
//                       height: 350,
//                     ),
//                     OutlineGradientButton(
//                       child: Text('Submit',
//                           style: TextStyle(
//                               color: Color(0xffFFFFFF),
//                               fontSize: 15,
//                               fontWeight: FontWeight.w400)),
//                       onTap: () async{
//                         PhoneAuthCredential phoneAuthCredential =
//                         PhoneAuthProvider.credential(
//                             verificationId: verificationId, smsCode: otpcontroller.text);
//
//                         signInWithPhoneAuthCredential(phoneAuthCredential);
//                       },
//
//                       gradient: LinearGradient(colors: [
//                         Color(0xffFFE2CD),
//                         Color(0xffFEC2E7),
//                         Color(0xffC9E7FF),
//                         Color(0xff86FEF4)
//                       ]),
//                       strokeWidth: 2,
//                       padding: EdgeInsets.symmetric(horizontal: 39, vertical: 12),
//                       radius: Radius.circular(8),
//                     ),
//                   ],
//                 ),
//               ),
//             ]),
//       ),
//     );
//   }
//
//   //       mainAxisAlignment: MainAxisAlignment.center,
//   //       children: [
//   //         //Spacer(),
//   //         TextField(
//   //           controller: otpcontroller,
//   //           decoration: InputDecoration(
//   //             hintText: "Enter OTP",
//   //           ),
//   //         ),
//   //         SizedBox(
//   //           height: 20,
//   //         ),
//   //         ElevatedButton(
//   //           onPressed: () async{
//   //             PhoneAuthCredential phoneAuthCredential =
//   //             PhoneAuthProvider.credential(
//   //                 verificationId: verificationId, smsCode: otpcontroller.text);
//   //
//   //             signInWithPhoneAuthCredential(phoneAuthCredential);
//   //           },
//   //           child: Text("Verify"),
//   //           style: ElevatedButton.styleFrom(
//   //               primary: Colors.grey
//   //           ),
//   //         )
//   //       ]
//   //   );
//   // }
//
//   final GlobalKey<ScaffoldState> _Scaffoldkey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         key: _Scaffoldkey,
//         body: Container(
//           child: showLoading
//               ? Center(
//             child: CircularProgressIndicator(),
//           )
//               : currentState == OtpAuthState.SHOW_MOBILE_FORM_STATE
//               ?getMobileFormWidget(context)
//               :getOtpFormWidget(context),
//           padding: const EdgeInsets.all(30),
//         )
//     );
//   }
// }
//
//
//
//
//




// OutlineGradientButton(
// child: Text('Submit',
// style: TextStyle(
// color: Color(0xffFFFFFF),
// fontSize: 15,
// fontWeight: FontWeight.w400)),
// onTap: () async{
// PhoneAuthCredential phoneAuthCredential =
// PhoneAuthProvider.credential(
//     verificationId: verificationId, smsCode: otpcontroller.text);
//
// signInWithPhoneAuthCredential(phoneAuthCredential);
// },
//
// gradient: LinearGradient(colors: [
// Color(0xffFFE2CD),
// Color(0xffFEC2E7),
// Color(0xffC9E7FF),
// Color(0xff86FEF4)
// ]),
// strokeWidth: 2,
// padding: EdgeInsets.symmetric(horizontal: 39, vertical: 12),
// radius: Radius.circular(8),
// )
