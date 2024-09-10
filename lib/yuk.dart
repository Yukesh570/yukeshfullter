import 'package:flutter/material.dart';
import 'package:yukesh/home/home.dart';
import 'package:yukesh/profile/profile.dart';
import 'dart:math';
import 'package:yukesh/main.dart';
import 'package:audioplayers/audioplayers.dart';
import 'search/search.dart';

class yuk extends StatefulWidget {
  yuk({Key? key}) : super(key: key);

  @override
  State<yuk> createState() => _yukState();
}

int _currentindex = 0; //to know which page we are
List<Widget> _childern = [home(), SecondPage(), profile()];

class _yukState extends State<yuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childern[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int newIndex) {
          // playmusic(7);
          setState(() {
            _currentindex = newIndex;
          });
        },
        currentIndex: _currentindex,
        items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
