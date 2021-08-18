import 'package:flutter/material.dart';

class AppBarTest extends StatefulWidget {
  const AppBarTest({Key? key}) : super(key: key);

  @override
  _AppBarTestState createState() => _AppBarTestState();
}

class _AppBarTestState extends State<AppBarTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Text("Goal", ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
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
            child: Text('Harvard University', style: TextStyle(color: Colors.white, fontSize: 30), ),
          ),
        ),
      ),
      backgroundColor: Color(0xFF1E1E1E),
    );
  }
}
