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
      _progress = widget.value + _progress;
    });
    return _progress;
  }

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
