import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:language/components/components_item.dart';
import 'package:language/models/japan_models/phrases.dart';
// import 'package:audioplayers/audioplayers.dart';

// ignore_for_file: prefer_const_constructors
class PhrsesScreen extends StatefulWidget {
  const PhrsesScreen({Key? key}) : super(key: key);

  @override
  State<PhrsesScreen> createState() => _PhrsesScreenState();
}

class _PhrsesScreenState extends State<PhrsesScreen> {
  List<PhrasesModel> phrase = [
    PhrasesModel(
      shapeName: '来ますか',
      jpName: 'Anata wa kite imasu',
      enName: 'Are you coming',
      sound: 'asset/audio/japan/phrases/are_you_coming.wav',
    ),
    PhrasesModel(
      shapeName: '忘れずに購読してください',
      jpName: 'Kōdoku o wasurenaide kudasai',
      enName: 'Dont forget to subscribe',
      sound: 'asset/audio/japan/phrases/dont_forget_to_subscribe.wav',
    ),
    PhrasesModel(
      shapeName: 'ご気分はいかがですか ',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'How are you feeling ?',
      sound: 'asset/audio/japan/phrases/how_are_you_feeling.wav',
    ),
    PhrasesModel(
        shapeName: '私はアニメが大好きです',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime',
        sound: 'asset/audio/japan/phrases/i_love_anime.wav'),
    PhrasesModel(
      shapeName: 'プログラミングが大好きです',
      jpName: 'Watashi wa puroguramingu ga daisukidesu',
      enName: 'I love programming',
      sound: 'asset/audio/japan/phrases/i_love_programming.wav',
    ),
    PhrasesModel(
      shapeName: 'プログラミングは簡単です',
      jpName: 'Puroguramingu wa kantandesu',
      enName: 'Programming is easy',
      sound: 'asset/audio/japan/phrases/programming_is_easy.wav',
    ),
    PhrasesModel(
      shapeName: '名前はなんですか',
      jpName: 'Namae wa nandesu ka',
      enName: 'What is your name ?',
      sound: 'asset/audio/japan/phrases/what_is_your_name.wav',
    ),
    PhrasesModel(
      shapeName: 'どこに行くの',
      jpName: 'Doko ni iku no',
      enName: 'Where are you going ?',
      sound: 'asset/audio/japan/phrases/where_are_you_going.wav',
    ),
    PhrasesModel(
      shapeName: 'はい、来ます',
      jpName: 'Hai, kimasu',
      enName: 'Yes i am coming',
      sound: 'asset/audio/japan/phrases/yes_im_coming.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff47312B),
        centerTitle: false,
        titleSpacing: 2,
        title: const Text(
          'Pharses ( Furēzu )',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              try {
                // AudioCache player = AudioCache(
                //   prefix: 'asset/sounds/japan/phrases/',
                // );
                // player.play('phrases.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/phrases/phrases.mp3'),
                );
              } catch (ex) {
                debugPrint("Excaption is $ex");
              }
            },
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: ((context, index) {
          return PhrasesItem(
            phrase: phrase[index],
          );
        }),
      ),
    );
  }
}
