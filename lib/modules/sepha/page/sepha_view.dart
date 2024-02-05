import 'package:flutter/material.dart';

class SebhaView extends StatelessWidget {
  const SebhaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'التسبيح',
        style: TextStyle(
            fontFamily: "El Mesiri", fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
