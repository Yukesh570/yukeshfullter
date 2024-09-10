import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final AudioPlayer _audioPlayer = AudioPlayer(); // Use AudioPlayer

  void playMusic(int number) async {
    // Make sure your audio files are placed in the assets folder
    String audioPath = 'assets/note$number.wav';

    // Play the audio file from the assets folder
    await _audioPlayer.play(AssetSource(audioPath));
  }

  final _controller1 = TextEditingController();
  double height = 80;
  double width = 400;

  @override
  void dispose() {
    _audioPlayer.dispose(); // Dispose of AudioPlayer when not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Scaffold(
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
                            labelText: ('Search'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      height: 80,
                      width: width,
                    ),
                  ),
                  Container(
                    child: Text(_controller1.text.toString()),
                  ),
                  ElevatedButton(
                    child: Text('Play Sound 1'),
                    onPressed: () {
                      playMusic(1); // Play the first note
                    },
                  ),
                  ElevatedButton(
                    child: Text('Play Sound 2'),
                    onPressed: () {
                      playMusic(2); // Play the second note
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://c4.wallpaperflare.com/wallpaper/695/331/660/digital-art-artwork-women-cityscape-wallpaper-preview.jpg',
                        ),
                      ),
                    ),
                    height: 330,
                    width: 380,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
