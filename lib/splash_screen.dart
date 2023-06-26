import 'package:flutter/material.dart';
import 'package:urban_company/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>const LoginScreen(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          body: Center(
              child: Image(
        image: NetworkImage("https://seeklogo.com/images/U/urban-company-logo-A99D1E722A-seeklogo.com.png"),
        height: 70,
      ))),
    );
  }
}
