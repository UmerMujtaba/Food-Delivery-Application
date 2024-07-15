import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:foodalix/components/my_button.dart';
import 'package:foodalix/config.dart';
import 'package:foodalix/pages/home_page.dart';
import 'package:foodalix/pages/login_page.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../components/my_text_fields.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  late final AnimationController _controller;
  bool isNotValid = false;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);

    super.initState();
  }



  void registerUser() async {
    if (emailController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        confirmPasswordController.text.isNotEmpty) {
      var regBody = {
        'email': emailController.text,
        'password': passwordController.text,
      };

      try {
        var response = await http.post(
          Uri.parse(register), // Adjust URL if necessary
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(regBody),
        );

        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');

        var jsonResponse = jsonDecode(response.body);
        print(jsonResponse['status']);

        if (jsonResponse['status']) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage(onTap: widget.onTap)));
        } else {
          print('Something went wrong');
        }
      } catch (e) {
        print('Error registering user: $e');
        // Handle error as needed
      }
    } else {
      setState(() {
        isNotValid = true;
        print('Email and password are required.');
      });
    }
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Lottie.asset(
              'lib/images/lottie/trucknew.json',
              height: 150,
              controller: _controller,
              onLoaded: (comp) {
                _controller.duration = comp.duration;
                _controller.forward();
                _controller.repeat();
              },
            ),

            //message, app slogans
            Text(
              'Let\'s create an account for you',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),
            //email text field
            MyTextfields(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            //password textfield
            const SizedBox(height: 10),
            //email text field
            MyTextfields(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),

            MyTextfields(
              controller: confirmPasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            //password textfield
            const SizedBox(height: 30),
            //sign in button
            MyButton(
              text: 'Sign up',
              onTap: () {
                registerUser();
              },
            ),
            const SizedBox(height: 30),
            //already have an account ? login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Login now',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontWeight: FontWeight.bold)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
