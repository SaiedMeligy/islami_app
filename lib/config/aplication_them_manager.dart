import 'package:flutter/material.dart';

class AplicationThemManger {
  static const Color primaryColor = Color(0xffB7935F);
  static ThemeData lightThem = ThemeData(
      primaryColor: primaryColor,
      useMaterial3: true,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            fontFamily: "El messiri",
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: primaryColor,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(color: Colors.black),
          selectedItemColor: Colors.black,
          selectedLabelStyle: TextStyle(
              fontFamily: "El Mesiri",
              fontSize: 17,
              fontWeight: FontWeight.normal),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: TextStyle(
              fontFamily: "El Mesiri",
              fontSize: 16,
              fontWeight: FontWeight.normal),
          unselectedIconTheme: IconThemeData(color: Colors.white)));
}
