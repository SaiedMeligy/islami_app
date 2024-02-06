import 'package:flutter/material.dart';
import 'package:islamii_app/layout/layout_view.dart';
import 'package:islamii_app/modules/quraan/page/quran_details_view.dart';
import 'package:islamii_app/modules/splash/page/splash_view.dart';

import 'config/aplication_them_manager.dart';

void main() {
  runApp(Myapplication());
}

class Myapplication extends StatelessWidget {
  const Myapplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AplicationThemManger.lightThem,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.route_name,
      routes: {
        SplashScreen.route_name: (context) => SplashScreen(),
        LayoutScreen.route_name: (context) => LayoutScreen(),
        QuranDetailsView.route_name: (context) => QuranDetailsView(),
      },
    );
  }
}
