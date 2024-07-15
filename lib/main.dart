import 'package:flutter/material.dart';
import 'package:foodalix/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth/login_or_register.dart';
import 'model/restaurants.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(
    MultiProvider(providers: [
      //theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      //restaurant provider

      ChangeNotifierProvider(create: (context) => Restaurant()),
    ], child: MyApp(token: prefs.getString('token'),)));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, String? token});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
