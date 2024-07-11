import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class Category extends StatelessWidget {
   Category(this.text,this.color,this.onTap, {super.key});
final String text;
final Color color;
Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 10),
        alignment: Alignment.centerLeft,
        width: double.infinity,height: 80,
        color: color,
        child: Text(text,style: const TextStyle(
          fontSize: 18,
          color: Colors.white
        ),),
      ),
    );
  }
}
