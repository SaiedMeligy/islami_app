import 'package:flutter/material.dart';

class ButtonRadio extends StatelessWidget {
  final Icon iconButton;

  const ButtonRadio({super.key, required this.iconButton});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return IconButton(
      onPressed: () {},
      icon: iconButton,
      color: theme.primaryColor,
      iconSize: 40,
    );
  }
}
