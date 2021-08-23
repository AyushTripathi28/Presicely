import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LiveCountry extends StatefulWidget {
  final int value;
  final PageController pageController;

  const LiveCountry(
      {Key? key, required this.value, required this.pageController})
      : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<LiveCountry>
    with AutomaticKeepAliveClientMixin<LiveCountry> {
  get pageController => pageController;
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  UniqueKey keyTile = UniqueKey();

  // variable that stores the value of selected countries
  var _countries1;
  var _countries2;
  var _countries3;
  var _countries4;
  var _countries5;

  // boolean variable for enable/disable dropdown list
  bool disableDropdown1 = true;
  bool disableDropdown2 = true;
  bool disableDropdown3 = true;
  bool disableDropdown4 = true;
  bool disableDropdown5 = true;

  // list of countries to show into dropdown menu
  List _listCountry = [
    'none',
    'China',
    'United Kingdom',
    'India',
    'Russia',
    'United States',
    'Japan',
    'South Korea',
    'France',
    'Canada',
    'Australia',
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Color(0xFF1E1E1E),
      body: Padding(
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
              height: 640,
              width: 320,
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
                            padding: const EdgeInsets.all(20.0),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Important',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Top 5 Countries you want to Live in',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF),
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.start,
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),

                                  // 1st dropdown for country no.1
                                  Container(
                                    width: 258,
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(14.0),
                                        color: Color(0xff000000)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<dynamic>(
                                        dropdownColor: Color(0xff000000),
                                        value: _countries1,
                                        icon: Icon(
                                          Icons.arrow_drop_down_circle_sharp,
                                          color: Color(0xff373737),
                                          size: 18,
                                        ),
                                        iconEnabledColor: Color(0xff000000),
                                        isExpanded: true,

                                        // unsing list of contries that shows into DropdwonMenuItem options
                                        items: _listCountry
                                            .map<DropdownMenuItem>((value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color((0xffFFFFFF))),
                                              ));
                                        }).toList(),
                                        onChanged: (newValue) {
                                          setState(() {
                                            // adding value of selected option(country name) in _countries1 variable
                                            _countries1 = newValue;
                                            // enables the next dropdown
                                            disableDropdown1 = false;
                                          });
                                        },
                                        hint: Text(
                                          '1. Select an Option',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 16),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  // 2nd dropdown for country no.2
                                  Container(
                                    height: 43,
                                    width: 258,
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(14.0),
                                        color: Color(0xff000000)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<dynamic>(
                                        value: _countries2,
                                        icon: Icon(
                                          Icons.arrow_drop_down_circle_sharp,
                                          color: Color(0xff373737),
                                          size: 18,
                                        ),
                                        iconEnabledColor: Color(0xff000000),
                                        isExpanded: true,
                                        dropdownColor: Color(0xff000000),
                                        hint: Text(
                                          '2.  Select an Option',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 16),
                                        ),

                                        // unsing list of contries that shows into DropdwonMenuItem options
                                        items: _listCountry
                                            .map<DropdownMenuItem>((value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffFFFFFF)),
                                              ));
                                        }).toList(),

                                        // checking condition of disableDropdown1
                                        // if it is true then return null
                                        // if it is false then enable the 2nd dropdown
                                        onChanged: disableDropdown1
                                            ? null
                                            : (newValue) {
                                          setState(() {
                                            // adding value of selected option(country name) in _countries2 variable
                                            _countries2 = newValue;
                                            // enables the next dropdown
                                            disableDropdown2 = false;
                                          });
                                        },
                                        disabledHint: Text(
                                          '2.  Select an Option',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff373737)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  // 3rd dropdown for country no.3
                                  Container(
                                    height: 43,
                                    width: 258,
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(14.0),
                                        color: Color(0xff000000)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<dynamic>(
                                        value: _countries3,
                                        icon: Icon(
                                          Icons.arrow_drop_down_circle_sharp,
                                          color: Color(0xff373737),
                                          size: 18,
                                        ),
                                        iconEnabledColor: Color(0xff000000),
                                        isExpanded: true,
                                        dropdownColor: Color(0xff000000),
                                        hint: Text(
                                          '3.  Select an Option',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 16),
                                        ),

                                        // unsing list of contries that shows into DropdwonMenuItem options
                                        items: _listCountry
                                            .map<DropdownMenuItem>((value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffFFFFFF)),
                                              ));
                                        }).toList(),

                                        // checking condition of disableDropdown2
                                        // if it is true then return null
                                        // if it is false then enable the 3rd dropdown
                                        onChanged: disableDropdown2
                                            ? null
                                            : (newValue) {
                                          setState(() {
                                            // adding value of selected option(country name) in _countries3 variable
                                            _countries3 = newValue;
                                            // enables the next dropdown
                                            disableDropdown3 = false;
                                          });
                                        },
                                        disabledHint: Text(
                                          '3.  Select an Option',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff373737)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  // 4th dropdown for country no.4
                                  Container(
                                    height: 43,
                                    width: 258,
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(14.0),
                                        color: Color(0xff000000)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<dynamic>(
                                        value: _countries4,
                                        icon: Icon(
                                          Icons.arrow_drop_down_circle_sharp,
                                          color: Color(0xff373737),
                                          size: 18,
                                        ),
                                        iconEnabledColor: Color(0xff000000),
                                        isExpanded: true,
                                        dropdownColor: Color(0xff000000),
                                        hint: Text(
                                          '4.  Select an Option',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 16),
                                        ),

                                        // unsing list of contries that shows into DropdwonMenuItem options
                                        items: _listCountry
                                            .map<DropdownMenuItem>((value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffFFFFFF)),
                                              ));
                                        }).toList(),

                                        // checking condition of disableDropdown3
                                        // if it is true then return null
                                        // if it is false then enable the 4th dropdown
                                        onChanged: disableDropdown3
                                            ? null
                                            : (newValue) {
                                          setState(() {
                                            // adding value of selected option(country name) in _countries4 variable
                                            _countries4 = newValue;
                                            // enables the next dropdown
                                            disableDropdown4 = false;
                                          });
                                        },
                                        disabledHint: Text(
                                          '4.  Select an Option',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff373737)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  // 5th dropdown for country no.5
                                  Container(
                                    height: 43,
                                    width: 258,
                                    padding:
                                    EdgeInsets.symmetric(horizontal: 15.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(14.0),
                                        color: Color(0xff000000)),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<dynamic>(
                                        value: _countries5,
                                        icon: Icon(
                                          Icons.arrow_drop_down_circle_sharp,
                                          color: Color(0xff373737),
                                          size: 18,
                                        ),
                                        iconEnabledColor: Color(0xff000000),
                                        isExpanded: true,
                                        dropdownColor: Color(0xff000000),
                                        hint: Text(
                                          '5.  Select an Option',
                                          style: TextStyle(
                                              color: Color(0xffFFFFFF),
                                              fontSize: 16),
                                        ),

                                        // unsing list of contries that shows into DropdwonMenuItem options
                                        items: _listCountry
                                            .map<DropdownMenuItem>((value) {
                                          return DropdownMenuItem(
                                              value: value,
                                              child: Text(
                                                value,
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Color(0xffFFFFFF)),
                                              ));
                                        }).toList(),
                                        // checking condition of disableDropdown4
                                        // if it is true then return null
                                        // if it is false then enable the 5th dropdown
                                        onChanged: disableDropdown4
                                            ? null
                                            : (newValue) {
                                          setState(() {
                                            // adding value of selected option(country name) in _countries5 variable
                                            _countries5 = newValue;
                                          });
                                        },
                                        disabledHint: Text(
                                          '5.  Select an Option',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Color(0xff373737)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
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
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 40, bottom: 30),
        child: OutlineGradientButton(
          child: Text('Next',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w400)),
          onTap: () {
            widget.pageController.nextPage(
                duration: Duration(milliseconds: 400), curve: Curves.ease);
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
    );
  }
}
