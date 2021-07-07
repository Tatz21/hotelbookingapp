import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.list,color: Colors.black,),onPressed: (){},),
          backgroundColor: Colors.transparent,elevation: 0,
        ),
        body: Column(children: [

        ],),
      ),
    );
  }
}