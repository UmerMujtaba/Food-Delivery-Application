import 'package:flutter/material.dart';
import 'package:foodalix/components/my_button.dart';
import 'package:foodalix/components/my_text_fields.dart';
import 'package:lottie/lottie.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late final AnimationController _controller;

  void login() {
/*
fill out authentication here
*/
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Food Delivery App',
              style: TextStyle(
                  fontSize: 24,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextfields(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            //password textfield
            const SizedBox(
              height: 10,
            ),
            //email textfield
            MyTextfields(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            //sign in button
            MyButton(
              text: 'Sign In',
              onTap: () {
                login();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            //not a member register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text('Register now',
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
