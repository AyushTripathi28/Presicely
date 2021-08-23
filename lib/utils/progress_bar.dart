import 'package:flutter/material.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({Key? key, this.value = 0}) : super(key: key);
  final int value;

  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  int _progress = 0;

  int addProgress() {
    setState(() {
<<<<<<< HEAD
      _progress = 20;
=======
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
      _progress = widget.value + _progress;
    });
    return _progress;
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Column(
      children: [
        Container(
          height: 18,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            // gradient: LinearGradient(
            //   stops: [32, 0],
            //   colors: [Color(0xff32383E), Color(0xff17191C)],
            // ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 7, right: 4.5),
              child: StepProgressIndicator(
                totalSteps: 100,
                currentStep: addProgress(),
                size: 7,
                padding: 0,
                roundedEdges: Radius.circular(200),
                selectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0XFFFFE2CD),
                    Color(0XFFFEC2E7),
                    Color(0XFFC9E7FF),
                    Color(0XFF86FEF4)
                  ],
                ),
                unselectedGradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0xFF171C21), Colors.black],
                ),
              ),
            ),
          ),
        ),
      ],
=======
    return StepProgressIndicator(
      totalSteps: 100,
      currentStep: addProgress(),
      size: 8,
      padding: 0,
      selectedColor: Colors.yellow,
      unselectedColor: Colors.cyan,
      roundedEdges: Radius.circular(30),
      selectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0XFFFFE2CD),
          Color(0XFFFEC2E7),
          // Color(0XFFC9E7FF),
          // Color(0XFF86FEF4)
        ],
      ),
      unselectedGradientColor: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [Color(0xFF171C21), Colors.white12],
      ),
>>>>>>> cc4c9a6644a3f52941a98027a9edde9c3d057ef1
    );
  }
}
