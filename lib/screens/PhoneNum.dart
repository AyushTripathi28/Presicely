import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:precisely/screens/NameEmail.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';


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


//enter mobile number screen
  getMobileFormWidget(context){
    return Container(
      color: Color(0xff1E1E1E),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Spacer(),
            TextField(
              style: TextStyle(color: Colors.white),
              controller: numbercontroller,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white),
                ),
                labelStyle: TextStyle(color: Colors.white),
                hintText: "Enter mobile phone",
                hintStyle: TextStyle(color:Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            OutlineGradientButton(
              onTap: () async{

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
              child: Text('Submit',
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              gradient: LinearGradient(colors: [
                Color(0xffFFE2CD),
                Color(0xffFEC2E7),
                Color(0xffC9E7FF),
                Color(0xff86FEF4)
              ]),
              strokeWidth: 2,
              padding: EdgeInsets.symmetric(horizontal: 39, vertical: 12),
              radius: Radius.circular(8),
            ),
          ]
    ),
        ));
  }


  //enter OTP screen
  getOtpFormWidget(context){
    return Container(
        color: Color(0xff1E1E1E),
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Spacer(),
          TextField(
            style: TextStyle(color: Colors.white),
            controller: otpcontroller,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.white),
              ),
              labelStyle: TextStyle(color: Colors.white),
              hintText: "Enter OTP",
              hintStyle: TextStyle(color:Colors.white),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          OutlineGradientButton(
            onTap: () async{

              PhoneAuthCredential phoneAuthCredential =
              PhoneAuthProvider.credential(
                  verificationId: verificationId, smsCode: otpcontroller.text);

              signInWithPhoneAuthCredential(phoneAuthCredential);

            },
            child: Text('Verify',
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
            gradient: LinearGradient(colors: [
              Color(0xffFFE2CD),
              Color(0xffFEC2E7),
              Color(0xffC9E7FF),
              Color(0xff86FEF4)
            ]),
            strokeWidth: 2,
            padding: EdgeInsets.symmetric(horizontal: 39, vertical: 12),
            radius: Radius.circular(8),
          ),
        ]
    )));
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
          //padding: const EdgeInsets.all(30),
        )
    );
  }
}







