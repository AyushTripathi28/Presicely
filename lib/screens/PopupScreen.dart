import 'dart:ui';

import 'package:flutter/material.dart';


class PopupScreen extends StatefulWidget {
  @override
  _PopupScreenState createState() => _PopupScreenState();
}

class _PopupScreenState extends State<PopupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 228,
                height: 356,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff7F5029),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 9, left: 9, right: 9),
                  child: Column(
                    children: [
                      Container(
                        height: 237,
                        width: 210,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/bg-1.png"),
                                fit: BoxFit.fill)),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: SizedBox(
                            child: Text(
                              "Do you know ?",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Dubai has many ",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                            height: 38,
                            width: 182,
                            child: Text(
                              " historical places like Burj ",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 127),
                child: SizedBox(
                  height: 34,
                  width: 120,
                  child: Center(
                    child: TextButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Color(0xffFFFFFF))))),
                      onPressed: () {},
                      child: Row(
                        // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Text(
                            "  X   close",
                            style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}