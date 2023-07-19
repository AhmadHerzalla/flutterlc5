import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:Screen()));
}
class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(" test"),
        backgroundColor:Colors.red ,
        ),
      body: test(),
    );
  }
}
class test extends StatefulWidget {
  const test({super.key});

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  late int  lpic;
    late int rpic;

    void rand (){setState(() {
       lpic=Random().nextInt(6)+1;
                  rpic=Random().nextInt(6)+1;
    });
     
    }
    @override
  void initState() {
     lpic=Random().nextInt(6)+1;
                  rpic=Random().nextInt(6)+1;
    ;
  }
  @override
  Widget build(BuildContext context) {
    
    return 
    Stack(
      children: [
        GestureDetector(
          onTap: rand,
          child: Container(
            color: Colors.blue,
          ),
        ),
        Row(
          children: [
            Expanded(
              child: 
              TextButton(
                onPressed: () {
                   rand();
                 
                },
                child: Image(image: AssetImage("images/dice$lpic.png"),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed:rand ,
                child: Image(image: AssetImage("images/dice$rpic.png")))),
          ],
        ),
      ],
    );
  }
}

