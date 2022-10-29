import 'package:ecommerce_faza/common/my_colors.dart';
import 'package:ecommerce_faza/view/dashboard/dashboard.dart';
import 'package:ecommerce_faza/view/reset_password/reset_password.dart';
import 'package:ecommerce_faza/view/sign_in/sign_in.dart';
import 'package:ecommerce_faza/view/sign_up/sign_up.dart';
import 'package:ecommerce_faza/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        // '/': (context) => const SplashScreen(),
        '/dashboard': (context) => const DashboardPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/reset-password' : (context) => const ResetPasswordPage()
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.softGray,
      body: const DashboardPage()
    );
  }
}
