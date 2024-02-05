import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamii_app/layout/layout_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const route_name = "/";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutScreen.route_name);
    });
    super.initState();
  }

  final Widget svgIcon = SvgPicture.asset('assets/images/bg2.svg');

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/splash.png'),
              fit: BoxFit.cover)),
    );
  }
}
