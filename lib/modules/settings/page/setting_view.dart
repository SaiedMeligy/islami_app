import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'الأعدادات',
        style: TextStyle(
            fontFamily: "El Mesiri", fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
