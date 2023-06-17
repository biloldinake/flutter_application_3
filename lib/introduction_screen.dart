import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/aps/constans.dart';
import 'package:flutter_application_3/login_screen.dart';
import 'package:flutter_application_3/register_screen.dart';
import 'package:flutter_application_3/resources/register_button.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
  static const String route ='IntroductionScreen';
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cSizedBox20,
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 20.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('⚡Flesh Chat ',
                      textStyle: TextStyle(fontSize: 50, color: Colors.black)),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),
            const SizedBox(
              height: 40, 
            ),
            Center(
              child: RegisterButton(
                onTap: () => Navigator.pushNamed(context, LoginScreen.route),
                color: cLoginColor,
                title: 'Login',
              ),
            ),

            //Register button
            const SizedBox(
              height: 25,
            ),
            Center( 
              child: RegisterButton(
                onTap: () => Navigator.pushNamed(context,RegisterScreen.route ),
                color: cRegisterColor,
                title: 'Register',
              ),
            )
          ],
        ),
      ),
    );
  }
}
