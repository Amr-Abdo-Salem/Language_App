// import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:language/components/components_item.dart';
import 'package:language/models/japan_models/family.dart';

// ignore_for_file: prefer_const_constructors
class FamilyMemberesScreen extends StatefulWidget {
  const FamilyMemberesScreen({Key? key}) : super(key: key);

  @override
  State<FamilyMemberesScreen> createState() => _FamilyMemberesScreenState();
}

class _FamilyMemberesScreenState extends State<FamilyMemberesScreen> {
  final List<Family> family = [
    Family(
      image: 'asset/images/japan/family_members/family_father.png',
      shapeName: '父親',
      jpName: 'Chichioya',
      enName: 'Father',
      sound: 'asset/audio/japan/family_members/father.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_mother.png',
      shapeName: '母親',
      jpName: 'Hahaoya',
      enName: 'Mother',
      sound: 'asset/audio/japan/family_members/mother.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_daughter.png',
      shapeName: '娘',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'asset/audio/japan/family_members/daughter.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_grandfather.png',
      shapeName: 'おじいさん',
      jpName: 'Ojisan',
      enName: 'Grang Father',
      sound: 'asset/audio/japan/family_members/grand father.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_grandmother.png',
      shapeName: 'おばあちゃん',
      jpName: 'Soo',
      enName: 'Grand Mother',
      sound: 'asset/audio/japan/family_members/grand mother.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_older_brother.png',
      shapeName: '兄',
      jpName: 'Nisan',
      enName: 'Older Brother',
      sound: 'asset/audio/japan/family_members/older bother.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_older_sister.png',
      shapeName: '姉',
      jpName: 'Are',
      enName: 'Older Sister',
      sound: 'asset/audio/japan/family_members/older sister.wav',
    ),
    Family(
      image: 'asset/images/japan/family_members/family_son.png',
      shapeName: '息子',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'asset/audio/japan/family_members/son.wav',
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
          'Family Members ( Kazoku no menbā )',
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
                //   prefix: 'asset/sounds/japan/family_members/',
                // );
                // player.play('family_member.mp3');
                AssetsAudioPlayer.newPlayer().open(
                  Audio('asset/audio/japan/family_members/family_member.mp3'),
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
        itemCount: family.length,
        itemBuilder: ((context, index) {
          return FamilyItem(family: family[index]);
        }),
      ),
    );
  }
}
