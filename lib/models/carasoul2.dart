import 'package:flutter/material.dart';

List<CircleAvatar> ca2=[
  CircleAvatar(backgroundColor: Colors.deepPurple,radius: 50,),
  CircleAvatar(backgroundColor: Colors.red,radius: 50,),
  CircleAvatar(backgroundColor: Colors.blue,radius: 50,),
  CircleAvatar(backgroundColor: Colors.pink,radius: 50,),
  CircleAvatar(backgroundColor: Colors.deepPurple,radius: 50,),
  CircleAvatar(backgroundColor: Colors.red,radius: 50,),
  CircleAvatar(backgroundColor: Colors.blue,radius: 50,),
  CircleAvatar(backgroundColor: Colors.pink,radius: 50,),
];

class Carasoul2 extends StatefulWidget {
  const Carasoul2({Key? key}) : super(key: key);

  @override
  State<Carasoul2> createState() => _Carasoul2State();
}

class _Carasoul2State extends State<Carasoul2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ca2.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ca2[index],
          );
        },
      ),
    );
  }
}