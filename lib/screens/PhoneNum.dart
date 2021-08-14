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

      //var showSnackBar = _ScaffoldKey.currentState!.showSnackBar(SnackBar(content: Text(e.message)));
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







