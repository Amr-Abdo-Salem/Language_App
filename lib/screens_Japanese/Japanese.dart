// ignore_for_file: file_names

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:language/components/japanese_items.dart';
import 'package:language/screens_Japanese/colors_page.dart';
import 'package:language/screens_Japanese/family_members_page.dart';
import 'package:language/screens_Japanese/numbers_page.dart';
import 'package:language/screens_Japanese/phrases_page.dart';

// ignore_for_file: prefer_const_constructors
class JapaneseLanguageScreen extends StatefulWidget {
  const JapaneseLanguageScreen({Key? key}) : super(key: key);

  @override
  State<JapaneseLanguageScreen> createState() => _JapaneseLanguageScreenState();
}

class _JapaneseLanguageScreenState extends State<JapaneseLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff47312B),
        centerTitle: false,
        elevation: 5,
        toolbarHeight: 65,
        title: const Text(
          'Japanese ( Nihon )',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              try {
                // AudioCache player = AudioCache(
                //   prefix: 'asset/sounds/colors/',
                // );
                // player.play('japanese.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio("asset/audio/japan/colors/japanese.mp3"),
                  // playInBackground: PlayInBackground.enabled,
                  // playSpeed: ,
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
        ],
      ),
      body: Column(children: [
        Expanded(
          child: Category(
            text1: 'Numbers',
            text2: 'Sūji',
            text3: '数字',
            color: const Color(0xffF09136),
            onDoubleTap: () {
              try {
                // AudioCache player = AudioCache(
                //   prefix: 'asset/sounds/numbers/',
                // );
                // player.play('numbers.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/numbers/numbers.mp3'),
                );
              } catch (ex) {
                return (ex);
              }
            },
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NumbersScreen(),
                  ));
            },
          ),
        ),
        Expanded(
          child: Category(
            text1: "Family Members",
            text2: 'Kazoku no menbā',
            text3: '家族のメンバー',
            color: const Color(0xff568B35),
            onDoubleTap: () {
              try {
                // AudioCache player = AudioCache(
                //   prefix: 'asset/sounds/family_members/',
                // );
                // player.play('family_member.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/family_members/family_member.mp3'),
                );
              } catch (ex) {
                return (ex);
              }
            },
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FamilyMemberesScreen(),
                  ));
            },
          ),
        ),
        Expanded(
          child: Category(
            text1: "Colors",
            text2: 'Iro',
            text3: '色',
            color: const Color(0xff79339F),
            onDoubleTap: () {
              try {
                // AudioCache player = AudioCache(
                //   prefix: 'asset/sounds/colors/',
                // );
                // player.play('colors.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/colors/colors.mp3'),
                );
              } catch (ex) {
                return (ex);
              }
            },
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColorsScreen(),
                  ));
            },
          ),
        ),
        Expanded(
          child: Category(
            text1: "Phrases",
            text2: 'Furēzu',
            text3: 'フレーズ',
            color: const Color(0xff4FADC8),
            onDoubleTap: () {
              try {
                // AudioCache player = AudioCache(
                //   prefix: 'asset/sounds/phrases/',
                // );
                // player.play('phrases.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/phrases/phrases.mp3'),
                );
              } catch (ex) {
                return (ex);
              }
            },
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhrsesScreen(),
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
