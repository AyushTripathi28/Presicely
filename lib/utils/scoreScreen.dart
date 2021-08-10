import 'package:flutter/material.dart';


class Scorescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        backgroundColor: Color(0xff1E1E1E),
        elevation: 10.0,
        actions: [
          IconButton(icon: Icon(Icons.chat, color: Color(0xffD2ECFF)), onPressed: () {}),
          IconButton(icon: Icon(Icons.info, color: Color(0xffD2ECFF)), onPressed: () {}),
        ],
        leading: IconButton(icon: Icon(Icons.keyboard_backspace, color: Color(0xffD2ECFF)), onPressed: () {}),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(50, 30, 40, 30),
              padding: EdgeInsets.all(20),
              //height: 100,
              width: 230,
            ),
            Text('178', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 20,
            ),
            Text('Your Score', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(
              height: 15,
            ),
            Text('This is more than 70% of the users', style: TextStyle(fontSize: 12, color: Colors.grey)),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text('View Tracks', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white)),
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: BorderSide(color: Colors.blue),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: Image.asset(
                      "assets/screen1.jpeg",
                      height: 150,
                      width: 150,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                    child: Image.asset(
                      "assets/screen2.jpeg",
                      height: 150,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    //Container(
                    //alignment: Alignment.bottomCenter,
                    //children: [
                    //Text('Your top Interests', style: TextStyle(fontSize: 15, color: Colors.grey)),
                    //],
                    //),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[850],
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey[850]),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey[850]),
                    child: Column(
                      children: [
                        Text('Last Mock Test', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text('83%', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                            Icon(
                              Icons.arrow_drop_up_outlined,
                              color: Colors.green,
                            ),
                            Text('5%', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green)),
                          ],
                        ),
                        Text('Compared to\n74% last exam', style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[850],
              ),
              child: Column(
                children: [
                  Text('People with a similar profile interest in', style: TextStyle(fontSize: 15, color: Colors.grey)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('Civil Engineering', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Product Design', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Text('M.Arch', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 150,
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(24), color: Colors.grey[850]),
              child: Column(
                children: [
                  Text('Mandatory Legal Formalities', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.grey)),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.check_outlined,
                            color: Colors.green,
                          ),
                          Text('Passport', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                          ),
                          Text('Income Documents', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.close_outlined,
                            color: Colors.red,
                          ),
                          Text('English Proficiency Test', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}