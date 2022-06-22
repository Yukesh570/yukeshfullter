import 'package:flutter/material.dart';
import 'package:yukesh/profile/profile.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:yukesh/search/search.dart';

class profile extends StatefulWidget {
  profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          backgroundColor: Colors.amber,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    boxShadow: [
                      BoxShadow(color: Colors.black, offset: Offset(1.0, 1.0)),
                    ],
                    // borderRadius: BorderRadius.circular(15),
                    color: Color.fromARGB(255, 226, 241, 86),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/yuk.jpeg'),
                    ),
                  ),

                  // child: Center(
                  //   child: Text('Hello'),
                  // ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
