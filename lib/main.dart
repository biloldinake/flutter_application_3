import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_3/flashchat.dart';
import 'firebase_options.dart';
import 'introduction_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';

void main() async {
// ...
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:IntroductionScreen.route,
      routes:{
    RegisterScreen.route:(context)=> RegisterScreen(),
     LoginScreen.route:(context)=>  LoginScreen(),
      HomeScreen.route:(context)=>  const HomeScreen(),
       IntroductionScreen.route:(context)=> const IntroductionScreen(),
      },
      debugShowCheckedModeBanner: false,
      // home: const IntroductionScreen(),
    );
  }
}
