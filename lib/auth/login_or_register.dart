import 'package:flutter/material.dart';

import '../pages/login_page.dart';
import '../pages/register_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({Key? key}) : super(key: key);

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  //initialize login page
  bool showLoginPage=true;

  //toggle between login and register
  void togglePage() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }


  @override
  Widget build(BuildContext context) {
   if(showLoginPage) {
     return RegisterPage(onTap: togglePage);
   } else {
     return LoginPage(onTap: togglePage);
   }
  }
}
