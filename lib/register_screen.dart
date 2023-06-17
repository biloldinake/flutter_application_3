import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/appbar_helper/app_bar_container.dart';
import 'package:flutter_application_3/aps/constans.dart';
import 'package:flutter_application_3/bottom_title.dart';
import 'package:flutter_application_3/flashchat.dart';
import 'package:flutter_application_3/resources/register_button.dart';
import 'package:flutter_application_3/textfield_helper/textfield_helper.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);
  static const String route='RegisterScreen';

  @override
  _RegisterScreen createState() => _RegisterScreen();
}

class _RegisterScreen extends State<RegisterScreen> {
  final nameController = TextEditingController();

  final emailController = TextEditingController();
  final paswordController = TextEditingController();
  String id = "1321344256656gfhgh";
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  Future<void> adduser() {
    try {
      return users
          .add({
            'name': nameController.text,
            'email': emailController.text,
            'id': id,
          })
          .then((value) => log("User Added"))
          .catchError((error) => log("Failed to add user: $error"));
    } catch (e) {
      log('e ===> $e');
      throw Exception(e);
    }
  }

  Future<void> signUp() async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: emailController.text,
            password: paswordController.text,
          )
          .then((value) => {
                adduser(),
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()))
              });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        log('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        log('The account already exists for that email.');
      }
    } catch (e) {
      log('error ==> $e');
    }
  }

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
            MyTextFieldWidet(
              controller: nameController,
              keyboardType: TextInputType.name,
              labelText: 'username',
              obscureText: false,
              hintText: 'enter your username',
            ),
            //password
            cSizedBox50,
            MyTextFieldWidet(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              labelText: 'email',
              obscureText: false,
              hintText: 'enter your password',
            ),
            // mobile number
            cSizedBox50,
            MyTextFieldWidet(
              controller: paswordController,
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
                signUp();
              },
            ),
            cSizedBox20,
            // Text
            BottomTitle(
                title: 'Already have an account ',
                titleButton: 'Login',
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => LoginScreen()));
                }),
          ],
        ),
      ),
    );
  }
}
