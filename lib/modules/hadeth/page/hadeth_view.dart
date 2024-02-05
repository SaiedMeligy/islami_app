import 'package:flutter/material.dart';

class HadethView extends StatelessWidget {
  const HadethView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'الحديث',
        style: TextStyle(
            fontFamily: "El Mesiri", fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
