
import 'package:flutter/material.dart';
import 'package:flutter_application_3/appbar_helper/app_bar_container.dart';
import 'package:flutter_application_3/aps/constans.dart';
import 'package:flutter_application_3/bottom_title.dart';
import 'package:flutter_application_3/home_screen.dart';
import 'package:flutter_application_3/login_screen.dart';
import 'package:flutter_application_3/resources/register_button.dart';
import 'package:flutter_application_3/textfield_helper/textfield_helper.dart';



class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: cRegisterColor.withOpacity(0.6),
        body: Column(
          children: [
            // AppBar
            AppBarContainer(
              label: 'Register',
              color: cRegisterColor,
              definition: 'Fill up your details to register.',
            ),
            //email
            const SizedBox(
              height: 50,
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
            // mobile number
            cSizedBox50,
            MyTextField(
              keyboardType: TextInputType.phone,
              labelText: 'mobile',
              obscureText: true,
              hintText: 'enter your mobile number',
            ),
            // Login button
            const Expanded(child: cSizedBox50),
            RegisterButton(
                title: 'Register',
                color: Colors.grey[900],
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                }),
            cSizedBox20,
            // Text
            BottomTitle(
                title: 'Already have an account ',
                titleButton: 'Login',
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
