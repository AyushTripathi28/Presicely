// @dart=2.9x
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/screens/goalsScreen/engineering.dart';




class NameEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GradientText(
          text: "Precisely",
          colors: [
            Color(0xffFFE2CD),
            Color(0xffFEC2E7),
            Color(0xffC9E7FF),
            Color(0xff86FEF4),
            Color(0xffFFFFFF)
          ],
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color(0xff1E1E1E),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xff1E1E1E),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 90,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextFormField(
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      fillColor: Colors.black,
                      filled: true,
                      hintText: "Enter Name",
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: TextFormField(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                        fillColor: Colors.black,
                        filled: true,
                        hintText: "Enter Email",
                        hintStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.black))),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              OutlineGradientButton(
                child: Text('Submit',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 15,
                        fontWeight: FontWeight.w400)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Engineering() )
                        //AppBarBottom(value: 0,)),
                  );
                },
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
            ],
          ),
        ),
      ),
    );
  }
}