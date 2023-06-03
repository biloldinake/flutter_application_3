
import 'package:flutter/material.dart';
import 'package:flutter_application_3/appbar_helper/app_bar_container.dart';
import 'package:flutter_application_3/aps/constans.dart';
import 'package:flutter_application_3/bottom_title.dart';
import 'package:flutter_application_3/register_screen.dart';
import 'package:flutter_application_3/resources/register_button.dart';
import 'package:flutter_application_3/textfield_helper/textfield_helper.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String username = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: cLoginColor.withOpacity(0.6),
        body: Column(
          children: [
            // AppBar
            AppBarContainer(
              label: 'Login',
              color: cLoginColor,
              definition: 'Enter your parametrs to continue',
            ),
            //email
            const SizedBox(
              height: 100,
            ),
            MyTextField(
              onChanged: (value) {
                value = username;
              },
              keyboardType: TextInputType.emailAddress,
              labelText: 'username',
              obscureText: false,
              hintText: 'enter your username',
            ),
            //password
            cSizedBox50,
            MyTextField(
              onChanged: (value) {
                value = password;
              },
              keyboardType: TextInputType.visiblePassword,
              labelText: 'password',
              obscureText: true,
              hintText: 'enter your password',
            ),
            // Login button
             Expanded(child: cSizedBox50),
            RegisterButton(
                title: 'Login', color: Colors.grey[900], onTap: () {}),
            cSizedBox20,
            // Text Don't have an account
            BottomTitle(
              title: 'Don\'t have an account',
              titleButton: 'Register',
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => RegisterScreen())),
            ),
          ],
        ),
      ),
    );
  }
}
