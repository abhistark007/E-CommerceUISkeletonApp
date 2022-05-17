// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<CircleAvatar> ca = [
  CircleAvatar(
    backgroundColor: Colors.deepPurple,
    radius: 100,
    
  ),
  CircleAvatar(
    backgroundColor: Colors.red,
    radius: 100,
  ),
  CircleAvatar(
    backgroundColor: Colors.blue,
    radius: 100,
  ),
  CircleAvatar(
    backgroundColor: Colors.pink,
    radius: 100,
  ),
  CircleAvatar(
    backgroundColor: Colors.deepPurple,
    radius: 100,
  ),
  CircleAvatar(
    backgroundColor: Colors.red,
    radius: 100,
  ),
  CircleAvatar(
    backgroundColor: Colors.blue,
    radius: 100,
  ),
  CircleAvatar(
    backgroundColor: Colors.pink,
    radius: 100,
  ),
];
List<String> names = [
  "Hoodie Rose1",
  "Hoodie Rose2",
  "Hoodie Rose3",
  "Hoodie Rose4",
  "Hoodie Rose5",
  "Hoodie Rose6",
  "Hoodie Rose7",
  "Hoodie Rose8",
];
List<String> prices = [
  "\$ 238",
  "\$ 338",
  "\$ 499",
  "\$ 234",
  "\$ 987",
  "\$ 676",
  "\$ 343",
  "\$ 999",
];
late PageController pageController = PageController();

class Carasoul1 extends StatefulWidget {
  const Carasoul1({Key? key}) : super(key: key);

  @override
  State<Carasoul1> createState() => _Carasoul1State();
}

class _Carasoul1State extends State<Carasoul1> {
  int newIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            child: PageView.builder(
              controller: pageController,
              itemCount: ca.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  //height: 300,
                  child: Hero(
                    tag: "tag1",
                    child: Column(
                      children: [
                        ca[index],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    pageController.previousPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.bounceIn);
                    if (newIndex == 0) {
                      newIndex = 0;
                    } else {
                      newIndex--;
                    }
                  });
                },
                icon: Icon(Icons.skip_previous),
              ),
              Text(
                names[newIndex],
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: Color(0xFF69a4d9),
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                color: Colors.black,
                onPressed: () {
                  setState(() {
                    pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.bounceIn);
                    if (newIndex == 7) {
                      newIndex = 7;
                    } else {
                      newIndex++;
                    }
                  });
                },
                icon: Icon(Icons.skip_next),
              ),
            ],
          ),
           Text(
                prices[newIndex],
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    color: Color(0xFFf76732),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
