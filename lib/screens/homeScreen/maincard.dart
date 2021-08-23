import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    this.title = "",
    this.height = 160,
    this.width = 300,
  }) : super(key: key);
  final String title;
  final double height;
  final double width;
  // final Widget customWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            //offset: Offset(4.0,4.0)
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: height,
          width: width,
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
              child: Center(
                child: GradientText(
                  title,
                  style: TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Color(0xff1E2226),
                        ),
                      ],
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                  gradientType: GradientType.linear,
                  radius: 2.5,
                  colors: [
                    Color(0xff8D98A8),
                    Color(0xffFFFFFF).withOpacity(0.4),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}