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
    final AudioPlayer _audioPlayer = AudioPlayer();  // Create an instance of AudioPlayer

  // This widget is the root of your application.
/////////////////////////////////////////////////////////
///
void playmusic(int number) async {
    // Replace with the correct path to your asset (ensure the audio files are in the assets folder)
    String audioPath = 'note$number.wav';

    // Play the audio file
    await _audioPlayer.play(AssetSource(audioPath));
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
