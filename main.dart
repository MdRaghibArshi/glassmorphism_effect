
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/no_internet_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';

import 'glassmorphism.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isBlur = false;

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Stack(
              children: [
                Image.asset('assets/circle_abstract.jpg',
                fit: BoxFit.cover,
                  height: double.infinity,
                ),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      isBlur = !isBlur;
                      setState(() {});
                    },
                    child: GlassMorphism(
                      blur: isBlur ? 20 : 0,
                      opacity: 0.0,
                      child: const SizedBox(
                        height: 200.0,
                        width: 320.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}

}


