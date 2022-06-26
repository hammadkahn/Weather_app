import 'package:flutter/material.dart';

class Landing_text extends StatelessWidget {
  const Landing_text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: 'Hello,\n',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 57,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1D1D1D))),
        TextSpan(
          text: 'Let\'s set you\n',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 57,
              fontWeight: FontWeight.w600,
              color: Color(0xFFBFBFBF),
              height: 63.5 / 57),
        ),
        TextSpan(
          text: 'weather..',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 57,
              fontWeight: FontWeight.w600,
              color: Color(0xFF6DC9EF),
              height: 63.5 / 57),
        ),
      ])),
    );
  }
}
