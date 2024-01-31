import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('lib/assets/logo_small.png'),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            'FRIDGE FUSION',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.width * .033,
                color: const Color(0xffea7f24)),
          ),
        ),
      ],
    );
  }
}
