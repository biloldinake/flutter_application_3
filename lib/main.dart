import 'package:flutter/material.dart';
import 'package:flutter_application_3/introduction_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const IntroductionScreen(),
    );
  }
}
