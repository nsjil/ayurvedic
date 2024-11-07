import 'package:ayurvedic_og/login.dart';
import 'package:flutter/material.dart';

class StartinigPage extends StatefulWidget {
  const StartinigPage({super.key});

  @override
  State<StartinigPage> createState() => _StartinigPageState();
}

class _StartinigPageState extends State<StartinigPage> {
  initState() {
    super.initState();
    splashScreenSet();
  }

  splashScreenSet() async {
    await Future.delayed(Duration(seconds: 1));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/iPhone 13 & 14 - 1 (1).png"),
                    fit: BoxFit.cover
                    // image: AssetImage("assets/iPhone 13 & 14 - 1.png",)
                    )),
          )
        ],
      ),
    );
  }
}
