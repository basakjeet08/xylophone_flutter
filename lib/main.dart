import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  // Function which plays the Note taking the Note number as a parameter
  void playNote(int noteNo) {
    final player = AudioCache();
    player.play('note$noteNo.wav');
  }

  // Function which draws all the TextButtons on the Screen when called upon
  /// This function takes the note number to play and the color that needs to be displayed as background Colors
  Expanded drawButtons(int noteNumber , Color bgColor){
    return Expanded(
      child: TextButton(
        // Style where we can define the style of the Button like background color
        style: ButtonStyle(

          // Syntax to set the Background Color of the TextButton
          backgroundColor: MaterialStateProperty.all(bgColor),
        ),
        onPressed: () {
          playNote(noteNumber);
        },
        child: Container(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              drawButtons(1 , Colors.red),
              drawButtons(2 , Colors.orange),
              drawButtons(3 , Colors.yellow),
              drawButtons(4 , Colors.green),
              drawButtons(5 , Colors.teal),
              drawButtons(6 , Colors.blue),
              drawButtons(7 , Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
