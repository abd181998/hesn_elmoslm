import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(

            height: 300,
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                color: Colors.grey
            ),
            child: Container(

            ),



          ),

        ],

      )




    );
  }
}
