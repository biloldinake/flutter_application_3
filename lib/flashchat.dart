import 'package:flutter/material.dart';

import 'package:flutter_application_3/register_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
HomeScreenState createState() => HomeScreenState();

  static const String route='HomeScreen';
}

class HomeScreenState extends State<HomeScreen> {
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
              MaterialPageRoute(builder: (context) => RegisterScreen())),
          child: Text(
            'log out',
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
