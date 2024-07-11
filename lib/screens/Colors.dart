import 'package:flutter/material.dart';

import '../components/List_item.dart';
import '../models/item.dart';
// ignore: camel_case_types
class colors extends StatelessWidget {
   colors({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  final List<Item> Colors= [
    Item(image:'assets/images/colors/color_black.png',jText:'Kuro',eText: 'black',sound: 'black.wav'),
    Item(image: 'assets/images/colors/color_brown.png',jText:'Chairo',eText: 'brown',sound: 'brown.wav'),
    Item(image: 'assets/images/colors/color_dusty_yellow.png',jText:'Hokorippoi chairo',eText: 'dustyyellow',sound: 'dusty yellow.wav'),
    Item(image: 'assets/images/colors/color_gray.png',jText:'Haiiro',eText: 'gray',sound: 'gray.wav'),
    Item(image: 'assets/images/colors/color_green.png',jText:'Midori',eText: 'green',sound: 'green.wav'),
    Item(image: 'assets/images/colors/color_red.png',jText:'Aka',eText: 'red',sound: 'red.wav'),
    Item(image: 'assets/images/colors/color_white.png',jText:'Shiro',eText: 'white',sound: 'white.wav'),
    Item(image: 'assets/images/colors/yellow.png',jText:'Kiiro',eText: 'yellow',sound: 'yellow.wav'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: Colors.length,
        itemBuilder:(context,index){
          return ListItem(Colors[index],const Color(0xff7D40A2),
              'colors'
          );
        },

      ),

    );
  }
}
