
import 'package:demo_branch/screens/login_screen.dart';
import 'package:demo_branch/screens/setting_screen.dart';
import 'package:demo_branch/screens/shop_screen.dart';
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
              openScreen(context, const ShopScreen());
            }),
            _customButton('Login',(){
              openScreen(context, const LoginScreen());

            }),
            const SizedBox(height: 20,),
            _customButton('Setting',(){
              openScreen(context, const SettingScreen());
            }),

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
            borderRadius:  BorderRadius.all(
              Radius.circular(20.0),
            )
        ),
        child: Center(child: Text(title,style: const TextStyle(fontSize: 15,color: Colors.white),)),
      ),
    );
  }
  openScreen(BuildContext context,Widget screen){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>screen));
  }

}
