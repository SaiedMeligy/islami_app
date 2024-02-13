import 'package:flutter/material.dart';
import 'package:islamii_app/modules/rdaio/Widget/button_radio.dart';

class RadioView extends StatelessWidget {
  const RadioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_body.png'),
        const Text(
          "إذاعة القرآن الكريم",
          style: TextStyle(
              fontFamily: "El messiri",
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonRadio(
                iconButton: Icon(
              Icons.skip_previous,
              color: Color(0xffFACC1D),
            )),
            ButtonRadio(
                iconButton: Icon(Icons.play_arrow, color: Color(0xffFACC1D))),
            ButtonRadio(
                iconButton: Icon(Icons.skip_next, color: Color(0xffFACC1D))),
          ],
        )
      ],
    );
  }
}
