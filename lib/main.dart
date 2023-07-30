import 'package:app/screen/home.dart';
import 'package:app/screen/login.dart';
import 'package:app/screen/signin.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
  class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return  MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => const Home(),
          '/login':(context) => const LogIn(),
          '/signup':(context) => const SignUp(),
                  },
        initialRoute: '/',

        );
    }
  }
