import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            _customButton('Open Shop',(){

            })

          ],
        ),
      ),

    );
  }
  Widget _customButton(String title, VoidCallback onTap){
    return InkWell(
      onTap: (){
        onTap();
      }
      ,
      child: Container(
        height: 40,
        width: 150,
        decoration:  const BoxDecoration(
            color: Colors.green,
            borderRadius:  BorderRadius.only(
              topLeft:  Radius.circular(40.0),
              topRight:  Radius.circular(40.0),
            )
        ),
        child: Text(title,style: const TextStyle(fontSize: 15,color: Colors.white),),
      ),
    );
  }
  openScreen(BuildContext context,Widget screen){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>screen));
  }

}
