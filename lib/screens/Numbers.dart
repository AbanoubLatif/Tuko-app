import 'package:flutter/material.dart';
import 'package:toku/components/List_item.dart';
import 'package:toku/models/item.dart';
class Numbers extends StatelessWidget {
   Numbers({Key? key}) : super(key: key);
final List<Item> numbers= [
  Item(image:'assets/images/numbers/number_one.png',jText:'ichi',eText: 'one',sound: 'number_one_sound.mp3'),
  Item(image: 'assets/images/numbers/number_two.png',jText:'ni',eText: 'two',sound: 'number_two_sound.mp3'),
  Item(image: 'assets/images/numbers/number_three.png',jText:'san ',eText: 'three',sound: 'number_three_sound.mp3'),
  Item(image: 'assets/images/numbers/number_four.png',jText:'shi',eText: 'four',sound: 'number_four_sound.mp3'),
  Item(image: 'assets/images/numbers/number_five.png',jText:'go',eText: 'five',sound: 'number_five_sound.mp3'),
  Item(image: 'assets/images/numbers/number_six.png',jText:'roku',eText: 'six',sound: 'number_six_sound.mp3'),
  Item(image: 'assets/images/numbers/number_seven.png',jText:'shichi',eText: 'seven',sound: 'number_seven_sound.mp3'),
  Item(image: 'assets/images/numbers/number_eight.png',jText:' hachi',eText: 'eight',sound: 'number_eight_sound.mp3'),
  Item(image: 'assets/images/numbers/number_nine.png',jText:'kyuu',eText: 'nine',sound: 'number_nine_sound.mp3'),
  Item(image: 'assets/images/numbers/number_ten.png',jText:' juu',eText: 'ten',sound: 'number_ten_sound.mp3'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
          itemBuilder:(context,index){
            return ListItem(numbers[index],const Color(0xffF99531),
            'numbers',
            );
          },

      ),

    );
  }
}
