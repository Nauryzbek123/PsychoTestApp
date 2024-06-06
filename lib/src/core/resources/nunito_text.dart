import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NunitoText extends StatelessWidget {
  final double val;
  final String text;
  final Color color;
  final FontWeight fontWeight;

  const NunitoText(this.text, this.val, this.color,this.fontWeight,  {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(
          color: color, fontSize: val, fontWeight: fontWeight),
    );
  }
}