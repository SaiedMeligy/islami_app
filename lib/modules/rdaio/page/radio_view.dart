import 'package:flutter/material.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'الراديو',
        style: TextStyle(
            fontFamily: "El Mesiri", fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
