import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'login/login.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

/////////////////
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
/////////////////////////////////////////////////////////
  void playmusic(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  bool isvisible = true;
  final TextEditingController controller_all = TextEditingController();
  String mytext = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
