import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:precisely/screens/appbarbottom.dart';
import 'package:precisely/screens/homeScreen/HomeScreen.dart';
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
import 'package:precisely/utils/progress_bar.dart';

import 'scholarship.dart';

enum RequireVisa { Yes, No }
enum BackIndia { Yes, No }

class VisaBackInCountry extends StatefulWidget {
<<<<<<< HEAD
  const VisaBackInCountry({Key? key, required this.value}) : super(key: key);
  final int value;
=======
  const VisaBackInCountry(
      {Key? key, required this.value, required this.pageController})
      : super(key: key);
  final int value;
  final PageController pageController;
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1

  @override
  _VisaBackInCountryState createState() => _VisaBackInCountryState();
}

<<<<<<< HEAD
class _VisaBackInCountryState extends State<VisaBackInCountry> {
=======
class _VisaBackInCountryState extends State<VisaBackInCountry>
    with AutomaticKeepAliveClientMixin<VisaBackInCountry> {
  get pageController => pageController;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
  RequireVisa? _requireVisa = RequireVisa.No;
  BackIndia? _backIndia = BackIndia.No;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Academic Info"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.chat),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 50.0,
              alignment: Alignment.center,
              child: ProgressBar(
                value: widget.value,
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF1E1E1E),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(26.0),
                child: Container(
                  // height: screenSize.height / 1.4,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF32383E),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      color: Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(color: Colors.black, width: 2)),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Important",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Would you require help with visa/housing as well ?",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    leading: Radio(
                                        value: RequireVisa.Yes,
                                        groupValue: _requireVisa,
                                        onChanged: (RequireVisa? value) {
                                          setState(() {
                                            _requireVisa = value;
                                          });
                                        }),
                                    title: Text(
                                      "Yes",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    leading: Radio(
                                        value: RequireVisa.No,
                                        groupValue: _requireVisa,
                                        onChanged: (RequireVisa? value) {
                                          setState(() {
                                            _requireVisa = value;
                                          });
                                        }),
                                    title: Text(
                                      "No",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Are you willing to come back to your home country after you complete your studies ?",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ListTile(
                                    leading: Radio(
                                        value: BackIndia.Yes,
                                        groupValue: _backIndia,
                                        onChanged: (BackIndia? value) {
                                          setState(() {
                                            _backIndia = value;
                                          });
                                        }),
                                    title: Text(
                                      "Yes",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    leading: Radio(
                                        value: BackIndia.No,
                                        groupValue: _backIndia,
                                        onChanged: (BackIndia? value) {
                                          setState(() {
                                            _backIndia = value;
                                          });
                                        }),
                                    title: Text(
                                      "No",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            //--------------
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Scholarship(
                                        value: widget.value + 10,
                                      )));
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .black, //background color of button
                                    side: BorderSide(
                                      width: 3,
                                      color: Colors.yellowAccent,
                                    ), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(10)),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 30)),
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
=======
    super.build(context);
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                  blurRadius: 20.0, // soften the shadow
                  spreadRadius: 0.0, //extend the shadow
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                // height: 1500,
                // width: 150,
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
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("Important",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey)),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      "Would you require help with visa/housing as well ?",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ListTile(
                                            leading: Radio(
                                                value: RequireVisa.Yes,
                                                groupValue: _requireVisa,
                                                onChanged:
                                                    (RequireVisa? value) {
                                                  setState(() {
                                                    _requireVisa = value;
                                                  });
                                                }),
                                            title: Text(
                                              "Yes",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: ListTile(
                                            leading: Radio(
                                                value: RequireVisa.No,
                                                groupValue: _requireVisa,
                                                onChanged:
                                                    (RequireVisa? value) {
                                                  setState(() {
                                                    _requireVisa = value;
                                                  });
                                                }),
                                            title: Text(
                                              "No",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 60,
                                    ),
                                    Text(
                                      "Are you willing to come back to your home country after you complete your studies ?",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ListTile(
                                            leading: Radio(
                                                value: BackIndia.Yes,
                                                groupValue: _backIndia,
                                                onChanged: (BackIndia? value) {
                                                  setState(() {
                                                    _backIndia = value;
                                                  });
                                                }),
                                            title: Text(
                                              "Yes",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: ListTile(
                                            leading: Radio(
                                                value: BackIndia.No,
                                                groupValue: _backIndia,
                                                onChanged: (BackIndia? value) {
                                                  setState(() {
                                                    _backIndia = value;
                                                  });
                                                }),
                                            title: Text(
                                              "No",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 80,
                                    ),
                                    //--------------
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -5,
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
                              width: 312,
                              height: 80,
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 30),
        child: OutlineGradientButton(
          child: Text('Submit',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AppBarBottom(
                  value: 0,
                ),
              ),
            );
          },
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
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
    );
  }
}
