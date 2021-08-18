import 'package:flutter/material.dart';
import 'package:precisely/utils/custom_card.dart';
import 'package:precisely/utils/progress_bar.dart';


import 'major_subjects.dart';

class AcademicDetails1 extends StatefulWidget {
  const AcademicDetails1({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  _AcademicDetails1State createState() => _AcademicDetails1State();
}

class _AcademicDetails1State extends State<AcademicDetails1> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Text("Educational Info"),
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
        physics: BouncingScrollPhysics(),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  // height: screenSize.height,
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
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text("Important",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey)),
                            SizedBox(
                              height: 20,
                            ),
                            CustomCard(
                              title: "10th",
                              opt1: "34-60%",
                              opt2: "61-80%",
                              opt3: "81-100%",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "12th",
                              opt1: "34-60%",
                              opt2: "61-80%",
                              opt3: "81-100%",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "Bachelor",
                              opt1: "0-6",
                              opt2: "6.1-8",
                              opt3: "8.1-10",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "Masters",
                              opt1: "0-6",
                              opt2: "6.1-8",
                              opt3: "8.1-10",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "SAT",
                              opt1: "0-500",
                              opt2: "501-1000",
                              opt3: "801-1600",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "ACT",
                              opt1: "0-500",
                              opt2: "501-1000",
                              opt3: "801-1600",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "IELTS",
                              opt1: "0-6",
                              opt2: "6.1-8",
                              opt3: "8.1-10",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "TOEFL",
                              opt1: "0-6",
                              opt2: "6.1-8",
                              opt3: "8.1-10",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "GMAT",
                              opt1: "0-500",
                              opt2: "501-1000",
                              opt3: "801-1600",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "GRE",
                              opt1: "0-500",
                              opt2: "501-1000",
                              opt3: "801-1600",
                              optV1: 0,
                              optV2: 10,
                              optV3: 20,
                            ),
                            CustomCard(
                              title: "Placement Test",
                              opt1: "0-500",
                              opt2: "501-1000",
                              opt3: "801-1600",
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => MajorSubject(
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
