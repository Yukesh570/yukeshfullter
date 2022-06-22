import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

class secondpage extends StatefulWidget {
  secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

void playmusic(int number) {
  final player = AudioCache();
  player.play('note$number.wav');
}

void bottom(int num) {
  ElevatedButton(child: Text('sound$num'), onPressed: () {});
}

final _controller1 = TextEditingController();
double height = 80;
double width = 400;

class _secondpageState extends State<secondpage> {
  String metext = '';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Scaffold(
          // appBar:  AppBar(

          //   centerTitle: false,
          //   title: Row(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Text(
          //         'Yukesh',
          //         textAlign: TextAlign.right,
          //         style: TextStyle(
          //           color: Colors.black,
          //         ),
          //       )
          //     ],
          //   ),
          //   backgroundColor: Color.fromARGB(255, 226, 241, 86),
          // ),
          backgroundColor: Colors.white10,
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          controller: _controller1,
                          decoration: InputDecoration(
                              prefixIcon: IconButton(
                                alignment: Alignment.centerLeft,
                                onPressed: () {},
                                icon: Icon(Icons.search),
                              ),
                              // suffixIcon: IconButton(
                              //   onPressed: () {
                              //     Container(
                              //       child: Text(_controller1.text),
                              //     );
                              //   },
                              // ),
                              labelText: ('Search'),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      height: 80,
                      width: width,
                    ),
                  ),
                  Container(
                    child: Text(metext = _controller1.text.toString()),
                  ),

                  // ElevatedButton(
                  //   child: Text('sound-1'),
                  //   onPressed: () {
                  //     playmusic(1);
                  //   },
                  // ),
                  // ElevatedButton(
                  //   child: Text('sound-2'),
                  //   onPressed: () {
                  //     playmusic(2);
                  //   },
                  // ),
                  // ElevatedButton(
                  //   child: Text('sound-3'),
                  //   onPressed: () {
                  //     playmusic(3);
                  //   },
                  // ),
                  // ElevatedButton(
                  //   child: Text('sound-4'),
                  //   onPressed: () {
                  //     playmusic(4);
                  //   },
                  // ),
                  // ElevatedButton(
                  //   child: Text('sound-5'),
                  //   onPressed: () {
                  //     playmusic(5);
                  //   },
                  // ),
                  // ElevatedButton(
                  //   child: Text('sound-6'),
                  //   onPressed: () {
                  //     playmusic(6);
                  //   },
                  // ),
                  // ElevatedButton(
                  //   child: Text('sound-7'),
                  //   onPressed: () {
                  //     playmusic(7);
                  //   },
                  // ), Padding(

                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://c4.wallpaperflare.com/wallpaper/695/331/660/digital-art-artwork-women-cityscape-wallpaper-preview.jpg'),
                      ),
                    ),
                    height: 330,
                    width: 380,
                  ),

                  // ListView.builder(
                  //   itemCount: 10,
                  //   itemBuilder: ((context, index) {
                  //   return ListTile(
                  //     subtitle: Text('$index'),
                  //     title: Text('Text'),
                  //   );
                  // }))
                  // Container(
                  //   child: Image.network(
                  //       'https://c4.wallpaperflare.com/wallpaper/295/163/719/anime-anime-boys-picture-in-picture-kimetsu-no-yaiba-kamado-tanjir%C5%8D-hd-wallpaper-preview.jpg'),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
