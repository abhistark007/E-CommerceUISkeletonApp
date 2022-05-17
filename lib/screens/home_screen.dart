// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_app_1/models/carasoul1.dart';
import 'package:e_app_1/models/carasoul2.dart';
import 'package:e_app_1/models/custom_app_bar.dart';
import 'package:e_app_1/models/custom_container_1.dart';
import 'package:e_app_1/screens/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  List<bool> isSelected = [true, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF4F6FA),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // custom app bar widget via container
                SizedBox(height: 25,),
                CustomAppBar(),
                //custom container 2
                SizedBox(height: 40,),
                CustomContainer1(),
                // a circular image carasoul
                SizedBox(height: 35,),
                Carasoul2(),

                //a button/touch operated carasoul
                SizedBox(height: 30,),
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },child: Carasoul1()),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: 0,
          height: 60.0,
          items: <Widget>[
            Icon(
              Icons.add,
              size: 30,
              color: isSelected[0] ? Colors.blue : Colors.black,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: isSelected[1] ? Colors.blue : Colors.black,
            ),
            Icon(
              Icons.compare_arrows,
              size: 30,
              color: isSelected[2] ? Colors.blue : Colors.black,
            ),
            Icon(
              Icons.call_split,
              size: 30,
              color: isSelected[3] ? Colors.blue : Colors.black,
            ),
            Icon(
              Icons.perm_identity,
              size: 30,
              color: isSelected[4] ? Colors.blue : Colors.black,
            ),
          ],
          color: Colors.white,
          buttonBackgroundColor: Colors.white,
          backgroundColor: Color(0xFF69a4d9),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
              for (int i = 0; i < 5; i++) {
                isSelected[i] = false;
              }
              isSelected[_page] = true;
            });
          },
          letIndexChange: (index) => true,
        ),
      ),
    );
  }
}
