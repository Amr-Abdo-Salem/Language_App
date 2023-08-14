// import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:language/components/components_item.dart';
import 'package:language/models/japan_models/number.dart';

// ignore_for_file: prefer_const_constructors
class NumbersScreen extends StatefulWidget {
  const NumbersScreen({Key? key}) : super(key: key);

  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  final List<Number> numbers = [
    Number(
      image: 'asset/images/japan/numbers/number_one.png',
      shapeName: '一',
      jpName: 'Ichi',
      enName: 'One',
      sound: 'asset/audio/japan/numbers/number_one_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_two.png',
      shapeName: '二',
      jpName: 'Ni',
      enName: 'Two',
      sound: 'asset/audio/japan/numbers/number_two_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_three.png',
      shapeName: '三つ',
      jpName: 'San',
      enName: 'Three',
      sound: 'asset/audio/japan/numbers/number_three_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_four.png',
      shapeName: '四',
      jpName: 'Shi',
      enName: 'Four',
      sound: 'asset/audio/japan/numbers/number_four_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_five.png',
      shapeName: '五',
      jpName: 'Go',
      enName: 'Five',
      sound: 'asset/audio/japan/numbers/number_five_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_six.png',
      shapeName: '六',
      jpName: 'Roku',
      enName: 'Six',
      sound: 'asset/audio/japan/numbers/number_six_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_seven.png',
      shapeName: 'セブン',
      jpName: 'Sebun',
      enName: 'Seven',
      sound: 'asset/audio/japan/numbers/number_seven_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_eight.png',
      shapeName: '八',
      jpName: 'Hachi',
      enName: 'Eight',
      sound: 'asset/audio/japan/numbers/number_eight_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_nine.png',
      shapeName: '九',
      jpName: 'Kyu',
      enName: 'Nine',
      sound: 'asset/audio/japan/numbers/number_nine_sound.mp3',
    ),
    Number(
      image: 'asset/images/japan/numbers/number_ten.png',
      shapeName: '十',
      jpName: 'Ju',
      enName: 'Ten',
      sound: 'asset/audio/japan/numbers/number_ten_sound.mp3',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 2,
        backgroundColor: Color(0xff47312B),
        centerTitle: false,
        title: const Text(
          'Numbers ( Sūji )',
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
                //   prefix: 'asset/sounds/numbers/',
                // );
                // player.play('numbers.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/numbers/numbers.mp3'),
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
        itemCount: numbers.length,
        itemBuilder: ((context, index) {
          return NumbersItems(number: numbers[index]);
        }),
      ),
    );
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (int i = 0; i < numbers.length; i++) {
  //     itemsList.add(NumbersItems(number: numbers[i]));
  //   }
  //   return itemsList;
  // }
}
