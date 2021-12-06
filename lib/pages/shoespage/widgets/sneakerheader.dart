import 'package:flutter/material.dart';
import 'package:google_language_fonts/google_language_fonts.dart';

class SneakerHeader extends StatelessWidget {
  const SneakerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Text(
          'Sneakers',
          style: GoogleFonts.getFont('Roboto',
              fontSize: 25, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
