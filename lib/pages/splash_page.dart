import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_ride/pages/login_page.dart';
import 'package:login_ride/utils/color.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            orangeColors,
            orangeLigthColors,
          ], end: Alignment.bottomCenter, begin: Alignment.topCenter),
        ),
        child: Center(
          child: Image.asset("assets/images/logotipo.png"),
        ),
      ),
    );
  }
}
