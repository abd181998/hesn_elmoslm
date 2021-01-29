import 'package:flutter/material.dart';
import 'package:hesn_elmoslm/about/About.dart';
import 'package:hesn_elmoslm/azkar/Azkar.dart';
import 'package:hesn_elmoslm/mune/mune.dart';
import 'package:hesn_elmoslm/qraan/Qraan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
TabController _controller;


void initState(){
  super.initState();
  _controller = new TabController(length:4,vsync: this, initialIndex:3);
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(width: 90,),
            Text("حصن المسلم",style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.w900),),

          ],

        ),
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,

          tabs: [
            Tab(
              text: 'الاذكار',
            ),
            Tab(
              text: 'القرآن الكريم',
            ),
            Tab(
              text: 'مواقيت الصلاة',
            ),

            Tab(
             icon: Icon(Icons.menu),
            )
          ],
        ),

      ),
      body:  TabBarView(
        controller: _controller,
        children: [
          Azkar(),
          Qraan(),
          About(),
          Hom(),
        ],

      ),





    );
  }
}
