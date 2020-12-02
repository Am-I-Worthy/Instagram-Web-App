import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProfileDetail extends StatelessWidget {
  final String number;
  final String title;
  MyProfileDetail(this.number, this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number,
          style: GoogleFonts.nunito(
            color: Colors.white70,
            fontSize: 13.0,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          title,
          style: GoogleFonts.nunito(
            color: Colors.white70,
            fontSize: 11.0,
          ),
        ),
      ],
    );
  }
}