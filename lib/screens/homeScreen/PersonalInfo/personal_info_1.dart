import 'package:outline_gradient_button/outline_gradient_button.dart';
<<<<<<< HEAD
import 'package:precisely/assets/figmauploadicon_icons.dart';
=======
import 'package:precisely/screens/appbarbottom.dart';
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:flutter/material.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  _PersonalInfoPageState createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
<<<<<<< HEAD
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Figmauploadicon.backButton,
            size: 15,
          ),
        ),
=======
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
        elevation: 0,
        backgroundColor: Color(0xff1E1E1E),
        actions: <Widget>[
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueGrey),
            ),
            child: new IconButton(
                onPressed: () => print('Clicked..'),
<<<<<<< HEAD
                icon: new Image.asset('assets/info_icon.png')),
=======
                icon: new Image.asset('assets/info1.png')),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey)),
            child: new IconButton(
              onPressed: () => print('Clicked..'),
<<<<<<< HEAD
              icon: new Image.asset('assets/chat.png'),
=======
              icon: new Image.asset('assets/Vector.png'),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
            ),
          ),
        ],
        title: GradientText(
<<<<<<< HEAD
          'Precisely',
=======
          'Personal Info',
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
          style: TextStyle(
            letterSpacing: 0.02,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          colors: [
            Color(0xffFFE2CD),
            Color(0xfffec2e7),
            Color(0XffC9E7FF),
            Color(0xff86FEF4),
          ],
        ),
      ),

      //backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff32383E),
                  Color(0xff17191C),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000),
<<<<<<< HEAD
                  blurRadius: 10.0, // soften the shadow
=======
                  blurRadius: 20.0, // soften the shadow
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                  spreadRadius: 0.0, //extend the shadow
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
<<<<<<< HEAD
                height: 800,
                width: 400,
=======
                height: 641,
                width: 322,
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xffC8D5E1).withOpacity(0.09),
                      Color(0xff000000).withOpacity(0.2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.all(1.5), // white outline width
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xff32383E),
                          Color(0xff17191C),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
<<<<<<< HEAD
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GradientText(
                                  "Important",
                                  style: TextStyle(
                                      shadows: [
                                        Shadow(
                                          offset: Offset(1.0, 1.0),
                                          blurRadius: 3.0,
                                          color: Color(0xff1E2226),
                                        ),
                                      ],
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.5),
                                  gradientType: GradientType.linear,
                                  radius: 2.5,
                                  colors: [
                                    Color(0xff8D98A8),
                                    Color(0xffFFFFFF).withOpacity(0.4),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "First Name",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "DOB",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "Date Month Year",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Citizenship",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "select option",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sex",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "Select Option",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Marital Status",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "Select Options",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Marital Status",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "Select Options",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 320,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13.0),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Marital Status",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextField(
                                          style: TextStyle(color: Colors.white),
                                          // The validator receives the text that the user has entered.
                                          decoration: InputDecoration(
                                            contentPadding:
                                            EdgeInsets.symmetric(
                                                vertical: 0, horizontal: 0),
                                            fillColor: Colors.black,
                                            filled: true,
                                            hintText: "Select Options",
                                            hintStyle: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16),
                                            floatingLabelBehavior:
                                            FloatingLabelBehavior.always,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.red,
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                              BorderRadius.circular(10),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
=======
                        Container(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GradientText(
                                    "Important",
                                    style: TextStyle(
                                        shadows: [
                                          Shadow(
                                            offset: Offset(1.0, 1.0),
                                            blurRadius: 3.0,
                                            color: Color(0xff1E2226),
                                          ),
                                        ],
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.5),
                                    gradientType: GradientType.linear,
                                    radius: 2.5,
                                    colors: [
                                      Color(0xff8D98A8),
                                      Color(0xffFFFFFF).withOpacity(0.4),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Name",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "First Name",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "DOB",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "Date Month Year",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Citizenship",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "select option",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Sex",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "Select Option",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Marital Status",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "Select Options",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Marital Status",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "Select Options",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    width: 258,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Marital Status",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextField(
                                            style: TextStyle(color: Colors.white),
                                            // The validator receives the text that the user has entered.
                                            decoration: InputDecoration(
                                              contentPadding:
                                              EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0),
                                              fillColor: Colors.black,
                                              filled: true,
                                              hintText: "Select Options",
                                              hintStyle: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16),
                                              floatingLabelBehavior:
                                              FloatingLabelBehavior.always,
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.red,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff1E2125).withOpacity(0.15),
                                  Color(0xff212528),
                                ],
                              ),
                            ),
<<<<<<< HEAD
                            width: 400,
=======
                            width: 300,
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
                            height: 150,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30,bottom: 30),
        child: OutlineGradientButton(
<<<<<<< HEAD
          child: Text('Finish',
=======
          child: Text('Submit',
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
<<<<<<< HEAD
          onTap: () {},
=======
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AppBarBottom(value: 0,),
                ),
            );
          },
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
          gradient: LinearGradient(colors: [
            Color(0xffFFE2CD),
            Color(0xffFEC2E7),
            Color(0xffC9E7FF),
            Color(0xff86FEF4)
          ]),
          strokeWidth: 2,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          radius: Radius.circular(8),
        ),
      ),
    );
  }
}
