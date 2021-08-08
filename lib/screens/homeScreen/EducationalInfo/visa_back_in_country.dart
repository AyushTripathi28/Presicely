import 'package:flutter/material.dart';
import 'package:precisely/utils/progress_bar.dart';

import 'scholarship.dart';

enum RequireVisa { Yes, No }
enum BackIndia { Yes, No }

class VisaBackInCountry extends StatefulWidget {
  const VisaBackInCountry({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  _VisaBackInCountryState createState() => _VisaBackInCountryState();
}

class _VisaBackInCountryState extends State<VisaBackInCountry> {
  RequireVisa? _requireVisa = RequireVisa.No;
  BackIndia? _backIndia = BackIndia.No;

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
