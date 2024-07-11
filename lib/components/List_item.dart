
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';
class ListItem extends StatelessWidget {
   const ListItem( this.number,this.color,this.itemType, {super.key});
  final Item number;
  final Color color;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xffFFF4D9),
              child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(number.jText,style: const TextStyle(color: Colors.white,fontSize:20),),
                Text(number.eText,style: const TextStyle(color: Colors.white,fontSize: 20),),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right:20 ),
            child:IconButton(onPressed: (){
              AudioCache player= AudioCache(prefix: 'assets/sounds/$itemType/');
              player.play(number.sound);
            }, icon: const Icon(Icons.play_arrow,color: Colors.white,),),
          ),
        ],
      ),
    );
  }
}
