// ignore_for_file: prefer_const_constructors

// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language/models/japan_models/family.dart';
import 'package:language/models/japan_models/number.dart';
import 'package:language/models/japan_models/color_model.dart';
import 'package:language/models/japan_models/phrases.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class NumbersItems extends StatelessWidget {
  const NumbersItems({
    Key? key,
    required this.number,
  }) : super(key: key);
  final Number number;
  // final String sound;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        try {
          // AudioCache player =
          //     AudioCache(prefix: 'asset/sounds/japan/numbers/');
          // player.play(number.sound);
          AssetsAudioPlayer.newPlayer().open(
            Audio(number.sound),
          );
        } catch (ex) {
          debugPrint('Exsaption is $ex');
        }
      },
      child: Container(
        height: 133,
        color: const Color(0xffFA9C41),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    color: const Color(0xffFFFEE7),
                    child: Image.asset(number.image!)),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        number.shapeName!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        number.jpName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        number.enName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: IconButton(
                    onPressed: () {
                      try {
                        // AudioCache player =
                        //     AudioCache(prefix: 'asset/sounds/japan/numbers/');
                        // player.play(number.sound);
                        AssetsAudioPlayer.newPlayer().open(
                          Audio(number.sound),
                        );
                      } catch (ex) {
                        debugPrint('Exsaption is $ex');
                      }
                    },
                    icon: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

//______________________________________________________________________________
class FamilyItem extends StatelessWidget {
  const FamilyItem({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        try {
          // AudioCache player = AudioCache(
          //     prefix: 'asset/sounds/japan/family_members/');
          // player.play(family.sound);
          AssetsAudioPlayer.newPlayer().open(
            Audio(family.sound),
          );
        } catch (ex) {
          debugPrint("Excaption is $ex");
        }
      },
      child: Container(
        height: 133,
        color: Color(0xff568B35),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Color(0xffFFFEE7),
                  child: Image.asset(family.image!),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        family.shapeName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        family.jpName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        family.enName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: IconButton(
                    onPressed: () {
                      try {
                        // AudioCache player = AudioCache(
                        //     prefix: 'asset/sounds/japan/family_members/');
                        // player.play(family.sound);
                        AssetsAudioPlayer.newPlayer().open(
                          Audio(family.sound),
                        );
                      } catch (ex) {
                        debugPrint("Excaption is $ex");
                      }
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

//______________________________________________________________________________
class ColorsItem extends StatelessWidget {
  const ColorsItem({
    Key? key,
    required this.colors,
  }) : super(key: key);
  final ColorModel colors;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        try {
          // AudioCache player =
          //     AudioCache(prefix: 'asset/sounds/japan/colors/');
          // player.play(colors.sound);
          AssetsAudioPlayer.newPlayer().open(
            Audio(colors.sound),
          );
        } catch (ex) {
          debugPrint("Excaption is $ex");
        }
      },
      child: Container(
        height: 133,
        color: Color(0xff79339F),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Color(0xffFFFEE7),
                  child: Image.asset(colors.image!),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        colors.shapeName!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        colors.jpName!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        colors.enName!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: IconButton(
                    onPressed: () {
                      try {
                        // AudioCache player =
                        //     AudioCache(prefix: 'asset/sounds/japan/colors/');
                        // player.play(colors.sound);
                        AssetsAudioPlayer.newPlayer().open(
                          Audio(colors.sound),
                        );
                      } catch (ex) {
                        debugPrint("Excaption is $ex");
                      }
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
//______________________________________________________________________________

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({
    Key? key,
    required this.phrase,
  }) : super(key: key);
  final PhrasesModel phrase;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        try {
          // AudioCache player =
          //     AudioCache(prefix: 'asset/sounds/japan/phrases/');
          // player.play(phrase.sound);
          AssetsAudioPlayer.newPlayer().open(
            Audio(phrase.sound),
          );
        } catch (ex) {
          debugPrint("Excaption is $ex");
        }
      },
      child: Container(
        height: 100,
        color: Color(0xff4FADC8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16,
                    left: 15,
                    bottom: 16,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        phrase.shapeName!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        phrase.jpName!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        phrase.enName!,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16.0,
                  ),
                  child: IconButton(
                    onPressed: () {
                      try {
                        // AudioCache player =
                        //     AudioCache(prefix: 'asset/sounds/japan/phrases/');
                        // player.play(phrase.sound);
                        AssetsAudioPlayer.newPlayer().open(
                          Audio(phrase.sound),
                        );
                      } catch (ex) {
                        debugPrint("Excaption is $ex");
                      }
                    },
                    icon: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              height: 0.5,
              width: double.infinity,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
