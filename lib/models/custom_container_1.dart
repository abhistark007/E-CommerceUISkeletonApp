import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomContainer1 extends StatefulWidget {
  const CustomContainer1({Key? key}) : super(key: key);

  @override
  State<CustomContainer1> createState() => _CustomContainer1State();
}

class _CustomContainer1State extends State<CustomContainer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Collections",
            style: GoogleFonts.josefinSans(
              textStyle: TextStyle(
                  color: Color(0xFF69a4d9),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Icon(
            Icons.settings,
            color: Color(0xFFF76732),
          ),
        ],
      ),
    );
  }
}
