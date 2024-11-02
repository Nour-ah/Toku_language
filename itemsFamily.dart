import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/Family.dart';

class ItemsFamily extends StatelessWidget {
  const ItemsFamily({ required this.family}) ;
   final Family family;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
       color:Color(0xFF0073B6),
      child: Row(children: [
        Container(

          color: Color(0xFFF1F0BA),
          child: Image.asset(family.image_family)
          ),
       Padding(
         padding: const EdgeInsets.only(left: 16),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(family.jptextf,style: TextStyle(
              color: Colors.white,
              fontSize: 20,
       
            ),
            ),
            Text(family.engtextf,style: TextStyle(
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
         player.play(AssetSource(family.soundf));
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