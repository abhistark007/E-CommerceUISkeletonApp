import 'package:e_app_1/models/carasoul1.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30,),
                Row(children: [
                  SizedBox(width: 20,),
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon:Icon(Icons.arrow_back_ios),color: Color(0xFFf76732),),
                ],),
                Carasoul1(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
