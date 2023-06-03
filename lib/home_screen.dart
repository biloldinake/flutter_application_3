
import 'package:flutter/material.dart';
import 'package:flutter_application_3/introduction_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('WELCOME'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => IntroductionScreen())),
          child: Text(
            'log out',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
