import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Numbers.dart';


class ItemsNumbers extends StatelessWidget {
   const ItemsNumbers({required this.numbers});
   final Numbers numbers;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
       color:Color(0xFF6FBC92),
      child: Row(children: [
        Container(

          color: Color(0xFFF1F0BA),
          child: Image.asset(numbers.image_nambers)
          ),
       Padding(
         padding: const EdgeInsets.only(left: 16),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(numbers.jptext,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
       
            ),
            ),
            Text(numbers.engtext,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
       
            ),
            ),
          ],
         ),
       )  ,   
      Spacer(flex: 1,),
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: IconButton(
          splashColor: Colors.black,
          onPressed: (){

        final player =AudioPlayer();
         player.play(AssetSource(numbers.sound));
          },
           icon: Icon(
            Icons.play_arrow,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
      ],
      ),
    );
  }
}