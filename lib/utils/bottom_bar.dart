import 'package:flutter/material.dart';
import 'package:precisely/screens/homeScreen/HomeScreen.dart';
import 'package:precisely/screens/profilePage/profile.dart';
import 'package:precisely/utils/dash_card.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class AppBarBottom extends StatefulWidget {
  const AppBarBottom({Key? key, required this.value}) : super(key: key);
  final int value;

  @override
  _AppBarBottomState createState() => _AppBarBottomState();
}

class _AppBarBottomState extends State<AppBarBottom> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    DashCard(),
    Profile()
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xff1E1E1E),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1E1E1E),
        actions: <Widget>[
          Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.blueGrey),
            ),
            child: new IconButton(
                onPressed: () => print('Clicked..'),
                icon: new Image.asset('assets/info_icon.png')),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.blueGrey)),
            child: new IconButton(
              onPressed: () => print('Clicked..'),
              icon: new Image.asset('assets/chat.png'),
            ),
          ),
        ],
        title: GradientText(
           'Precisely',
          style: TextStyle(
            letterSpacing: 0.02,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          colors: [
            Color(0xffFFE2CD),
            Color(0xfffec2e7),
            Color(0XffC9E7FF),
            Color(0xff86FEF4),
          ],
        ),
      ),

      body: Container(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: _customBottomNavBar(),
    );
  }

  Widget _customBottomNavBar() {
    return Material(
      color: Color(0xff1E1E1E),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        child: Container(
          //Color: Color(0xff1E1E1E),
          height: 80,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff32383E),
                  Color(0xff17191C),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
          child: new BottomNavigationBar(
              currentIndex: _selectedIndex,
              onTap: _onItemTap,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconSize: 10,
              items: <BottomNavigationBarItem>[
                new BottomNavigationBarItem(
                  icon: new Image.asset(
                    'assets/Home.png', height: 20, width: 30,
                  ),
                  activeIcon: new Image.asset('assets/home_gradient.png'),
                  label: '',
                ),
                new BottomNavigationBarItem(
                    icon: new Image.asset('assets/main.png',height: 20, width: 30,
                    ),
                    activeIcon:
                    new Image.asset('assets/dashboard_gradient.png'),
                    label: ''),
                new BottomNavigationBarItem(
                    icon: new Image.asset('assets/Iconcolor.png',height: 20, width: 30,
                    ),
                    activeIcon: new Image.asset('assets/user_gradient.png'),
                    label: ''),
              ]
          ),
        ),
      ),
    );
  }
}
