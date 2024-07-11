import 'package:flutter/material.dart';
import 'package:toku/components/category.dart';
import 'package:toku/screens/Colors.dart';
import 'package:toku/screens/Family%20Members.dart';
import 'package:toku/screens/Numbers.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF4D9),
      appBar:
      AppBar(
        backgroundColor: const Color(0xff49332A),
        title: const Text(
          'Toku',style: TextStyle(

        ),
        ),
      ),
      body: Column(
        children: [
          Category('Numbers', const Color(0xffF99531),
                (){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
              return Numbers();
            }
            ));
          },),
          Category('Family Members', const Color(0xff528032),(){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
              return Family();
            }
            ));
          },),
          Category('Colors', const Color(0xff7D40A2),(){
            Navigator.push(context, MaterialPageRoute(builder:(BuildContext context){
              return colors();
            }
            ));
          },),
          const SizedBox(height: 10,),

          SizedBox(
              height: 280,width: 500,
              child: Image.asset(
                'assets/images/developer/Abanoub.jpeg',)),
          const SizedBox(height: 5,),

          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Developer :',
                    style:
                    TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Text('Abanoub Latif',
                    style:
                    TextStyle(
                        fontFamily: 'Borel',
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),),


                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
