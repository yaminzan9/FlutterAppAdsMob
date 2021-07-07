import 'package:flutter/material.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("MyGrocery App Home Page"),), 
          backgroundColor: Colors.green[900],
          ),
        body: 
        Center(child: Text("home page 2")),);
  }
}