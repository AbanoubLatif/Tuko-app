import 'package:flutter/material.dart';

import '../components/List_item.dart';
import '../models/item.dart';
class Family extends StatelessWidget {
   Family({Key? key}) : super(key: key);

  final List<Item> familyMembers= [
    Item(image:'assets/images/family/family_father.png',jText:'Chichioya',eText: 'father',sound: 'father.wav'),
    Item(image: 'assets/images/family/family_mother.png',jText:'Hahaoya',eText: 'mother',sound: 'mother.wav'),
    Item(image: 'assets/images/family/family_grandfather.png',jText:'Ojiisan',eText: 'grandfather',sound: 'grand father.wav'),
    Item(image: 'assets/images/family/family_grandmother.png',jText:'Sobo',eText: 'grandmother',sound: 'grand mother.wav'),
    Item(image: 'assets/images/family/family_older_brother.png',jText:'Nisan',eText: 'olderbrother',sound: 'older bother.wav'),
    Item(image: 'assets/images/family/family_older_sister.png',jText:'Ane',eText: 'oldersister',sound: 'older sister.wav'),
    Item(image: 'assets/images/family/family_son.png',jText:'Musuko',eText: 'son',sound: 'son.wav'),
    Item(image: 'assets/images/family/family_daughter.png',jText:'Musume',eText: ' daughter',sound: 'daughter.wav'),
    Item(image: 'assets/images/family/family_younger_brother.png',jText:'Otouto',eText: 'youngerbrother',sound: 'younger brohter.wav'),
    Item(image: 'assets/images/family/family_younger_sister.png',jText:'Imouto ',eText: 'youngersister',sound: 'younger sister.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder:(context,index){
          return ListItem(familyMembers[index],const Color(0xff528032),
          'family'
          );
        },

      ),

    );
  }
}
