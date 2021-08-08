import 'package:flutter/material.dart';
import 'global_variable.dart' as globals;

class CustomCard extends StatefulWidget {
  CustomCard(
      {Key? key,
      this.title = "",
      this.opt1 = "",
      this.opt2 = "",
      this.opt3 = "",
      this.optV1 = 0,
      this.optV2 = 0,
      this.optV3 = 0})
      : super(key: key);
  final String title;
  final String opt1;
  final String opt2;
  final String opt3;
  final int optV1;
  final int optV2;
  final int optV3;

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool toggled = false;
  ///------------------------------------CUSTOM RADIO PART START---------------------------------------------
  bool state_10 = false;
  bool state_12 = false;
  UniqueKey keyTile = UniqueKey();
  bool isExpanded = false;
  int selected = 0;

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

  Widget customRadio(String text, int v, int index) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 40,
        decoration: (selected == index)
            ? BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color(0xffFFE2CD),
                    const Color(0xffFEC2E7),
                    const Color(0xffC9E7FF),
                    const Color(0xff86FEF4)
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
              )
            : BoxDecoration(
                color: Color(0xFF232629),
                borderRadius: BorderRadius.circular(20),
              ),
        child: TextButton(
          onPressed: () {
            setState(() {
              selected = index;
              globals.probabilityScore += v;
              print("selected value is : " + selected.toString());
            });
          },
          child: Text(
            text,
            style: TextStyle(
                fontSize: 12,
                color: (selected == index) ? Colors.black : Color(0xFFA8A8A8)),
          ),
        ),
      ),
    );
  }
  ///---------------------------------------CUSTOM RADIO PART FINISH------------------------------------------

  @override
  Widget build(BuildContext context) {
    // var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: ExpansionTile(
          key: keyTile,
          initiallyExpanded: isExpanded,
          title: Text(
            widget.title,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          trailing: Switch(
            activeColor: Colors.blue,
            activeTrackColor: Color(0xFF303030),
            inactiveThumbColor: Color(0xFF5B6776),
            inactiveTrackColor: Color(0xFF303030),
            onChanged: (bool s) {
              setState(() {
                state_10 = s;
                isExpanded ? shrinkTile() : expandTile();
                toggled ? toggled = false : toggled = true;
                print(toggled);
              });
            },
            value: state_10,
          ),
          onExpansionChanged: (isExpanded) {
            setState(() {
              state_10 = isExpanded;
              isExpanded ? expandTile() : shrinkTile();
              toggled ? toggled = false : toggled = true;
              print(toggled);
            });
          },
          childrenPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select marks range.",
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                customRadio(
                  widget.opt1,
                  widget.optV1,
                  1,
                ),
                customRadio(
                  widget.opt2,
                  widget.optV2,
                  2,
                ),
                customRadio(
                  widget.opt3,
                  widget.optV3,
                  3,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
