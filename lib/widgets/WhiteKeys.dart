import 'package:audiofileplayer/audiofileplayer.dart';
import 'package:flutter/material.dart';

class WhiteKeys extends StatefulWidget {
  final int keysound;
  const WhiteKeys({
    super.key,
    required this.keysound,
  });

  @override
  State<WhiteKeys> createState() => _WhiteKeysState();
}

class _WhiteKeysState extends State<WhiteKeys> {

  late Audio audio;
  bool isPlaying = false;

  void playSound() {
    isPlaying = true;
    print("this is true =: $isPlaying");
    audio = Audio.load(
      'assets/sounds/sound${widget.keysound}.mp3',
      onComplete: () {
        isPlaying = false;
        setState(() {

        });

        print("this is false =: $isPlaying");
      },
    );
    audio.play();
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playSound();


        },
        child: Container(
          color: isPlaying ? Colors.grey : Colors.white,
          margin: EdgeInsets.symmetric(horizontal: 2),
        ),
      ),
    );
  }
}
