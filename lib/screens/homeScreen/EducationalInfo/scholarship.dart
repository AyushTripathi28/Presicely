import 'package:flutter/material.dart';
import 'package:precisely/utils/progress_bar.dart';

import '../HomeScreen.dart';



enum RequireScholarship { Yes, No }

class Scholarship extends StatefulWidget {
  const Scholarship({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  _ScholarshipState createState() => _ScholarshipState();
}

class _ScholarshipState extends State<Scholarship> {
  double _currentSliderValue = 0;
  RequireScholarship? _requireScholarship = RequireScholarship.No;
  bool isExpanded = false;
  UniqueKey keyTile = UniqueKey();

  void expandTile() {
    setState(() {
      isExpanded = true;
      keyTile = UniqueKey();
    });
  }

  void shrinkTile() {
    setState(() {
      isExpanded = false;
      keyTile = UniqueKey();
    });
  }

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
                  // height: screenSize.height / 1.3,
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
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Important",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                            SizedBox(
                              height: 50,
                            ),
                            //------------------------------------------------------------------------------------------
                            Text(
                              "Are you interested in getting a scholarship ?",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ExpansionTile(
                              key: keyTile,
                              initiallyExpanded: isExpanded,
                              title: Text(
                                "Yes",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              subtitle: Text(_currentSliderValue.toString()),
                              children: [
                                Slider(
                                  value: _currentSliderValue,
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                  min: 0,
                                  max: 100,
                                  divisions: 10,
                                  label: _currentSliderValue.round().toString(),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Note : The more scholarship you request, the more competitive it get for your application & hence may result in a lesser score at the end of this exercise.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                              ],
                              trailing: Radio(
                                  value: RequireScholarship.Yes,
                                  groupValue: _requireScholarship,
                                  onChanged: (RequireScholarship? value) {
                                    setState(() {
                                      _requireScholarship = value;
                                      isExpanded ? shrinkTile() : expandTile();
                                      print(_requireScholarship);
                                    });
                                  }),
                            ),
                            ListTile(
                              title: Text(
                                "No",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              trailing: Radio(
                                value: RequireScholarship.No,
                                groupValue: _requireScholarship,
                                onChanged: (RequireScholarship? value) {
                                  setState(() {
                                    _requireScholarship = value;
                                    isExpanded ? shrinkTile() : expandTile();
                                    print(_requireScholarship);
                                  });
                                },
                              ),
                            ),

                            //------------------------------------------------------------------------------------------

                            //------------------------------------------------------------------------------------------
                            SizedBox(
                              height: 100,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(
                                        value: widget.value + 10,
                                      ),
                                    ),
                                  );
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
