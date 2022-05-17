import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF4F6FA),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Color(0xFF69a4d9),
          ),
          Text(
            "H&M",
            style: GoogleFonts.josefinSans(textStyle: TextStyle(
                color: Color(0xFF69a4d9),
                fontSize: 30,
                fontWeight: FontWeight.bold),)
          ),
          Icon(
            Icons.search,
            color: Color(0xFF69a4d9),
          ),
        ],
      ),
    );
  }
}
