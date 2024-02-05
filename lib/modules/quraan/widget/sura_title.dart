import 'package:flutter/material.dart';

class SuraTitle extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTitle(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "El Mesiri",
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 2,
          height: 36,
          color: theme.primaryColor,
        ),
        Expanded(
          child: Text(
            suraName,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "El Mesiri"),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
