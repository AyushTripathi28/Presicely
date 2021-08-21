import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StepSubmit1 extends StatelessWidget {
  const StepSubmit1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Text(
            "Goal",
            style: TextStyle(color: Colors.grey),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        elevation: 20,
        backgroundColor: Colors.purple,
        centerTitle: true,
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
          preferredSize: const Size.fromHeight(30.0),
          child: Container(
            height: 50.0,
            alignment: Alignment.center,
            child: Text(
              'Harvard University',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              //margin: EdgeInsets.fromLTRB(50, 40, 40, 30),
              padding: EdgeInsets.only(top: 20.sp),
              child: Column(
                children: [
                  Container(
                    //padding: EdgeInsets.all(20),
                    height: 6.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.grey[850],
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(bottom: 10.sp),
                    height: 12.h,
                    width: 90.w,
                    child: Text('International Competitions',
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Circular Std',
                            color: Colors.grey)),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.grey[850],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(top: 5.sp),
                    height: 18.h,
                    //width: 30.w,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 60.sp,
                      child: Image(
                        image: AssetImage("assets/circle.png"),
                        //fit: BoxFit.cover
                      ),
                    ),
                  ),
                  Container(
                    child: Text('Step 1',
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            Image(
              image: AssetImage("assets/step1.png"),
              //fit: BoxFit.cover,
              width: 90.w,
            ),
          ],
        ),
      ),
    );
  }
}
