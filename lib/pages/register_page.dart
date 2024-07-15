import 'package:flutter/material.dart';
import 'package:foodalix/components/my_button.dart';
import 'package:lottie/lottie.dart';

import '../components/my_text_fields.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with SingleTickerProviderStateMixin{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  late final AnimationController _controller;


  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
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
              onTap: () {},
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
