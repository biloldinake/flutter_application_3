
import 'package:flutter/material.dart';
import 'package:flutter_application_3/aps/constans.dart';
import 'package:flutter_application_3/login_screen.dart';
import 'package:flutter_application_3/register_screen.dart';
import 'package:flutter_application_3/resources/register_button.dart';


class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cSizedBox20,
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '⚡',
                  style: TextStyle(fontSize: 40),
                ),
              
                const SizedBox(
                  width: 20,
                )
              ],
            ),
           
            // Login button
            const SizedBox(
              height: 40,
            ),
            RegisterButton(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen())),
              color: cLoginColor,
              title: 'Login',
            ),

            //Register button
            const SizedBox(
              height: 25,
            ),
            RegisterButton(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen())),
              color: cRegisterColor,
              title: 'Register',
            )
          ],
        ),
      ),
    );
  }
}
