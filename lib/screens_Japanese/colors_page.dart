import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language/components/components_item.dart';
import 'package:language/models/japan_models/color_model.dart';

// ignore_for_file: prefer_const_constructors
class ColorsScreen extends StatefulWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  @override
  State<ColorsScreen> createState() => _ColorsScreenState();
}

class _ColorsScreenState extends State<ColorsScreen> {
  final List<ColorModel> color = [
    ColorModel(
      shapeName: '黒',
      image: 'asset/images/japan/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
      sound: 'asset/audio/japan/colors/black.wav',
    ),
    ColorModel(
      shapeName: '茶色',
      image: 'asset/images/japan/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'asset/audio/japan/colors/brown.wav',
    ),
    ColorModel(
      shapeName: '巨乳イエロー',
      image: 'asset/images/japan/colors/color_dusty_yellow.png',
      jpName: 'Kyonyū ierō',
      enName: 'Busty Yellow',
      sound: 'asset/audio/japan/colors/dusty yellow.wav',
    ),
    ColorModel(
      shapeName: 'グレー',
      image: 'asset/images/japan/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
      sound: 'asset/audio/japan/colors/gray.wav',
    ),
    ColorModel(
      shapeName: '緑',
      image: 'asset/images/japan/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'asset/audio/japan/colors/green.wav',
    ),
    ColorModel(
      shapeName: '赤',
      image: 'asset/images/japan/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'asset/audio/japan/colors/red.wav',
    ),
    ColorModel(
      shapeName: '白',
      image: 'asset/images/japan/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
      sound: 'asset/audio/japan/colors/white.wav',
    ),
    ColorModel(
      shapeName: '黄色',
      image: 'asset/images/japan/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'asset/audio/japan/colors/yellow.wav',
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
          'Colors ( Iro )',
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
                //   prefix: 'asset/sounds/japan/colors/',
                // );
                // player.play('colors.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/colors/colors.mp3'),
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
        itemCount: color.length,
        itemBuilder: ((context, index) {
          return ColorsItem(colors: color[index]);
        }),
      ),
    );
  }
}
