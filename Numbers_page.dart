import 'package:flutter/material.dart';
import 'package:toku/component/items_numbers.dart';
import 'package:toku/models/Numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);

  final List<Numbers> numbers_item=const [
    Numbers(image_nambers: 'assets/images/numbers/number_one.png', 
    engtext: 'one', jptext: 'ichi',sound: 'sounds/numbers/number_one_sound.mp3'),
    Numbers(image_nambers: 'assets/images/numbers/number_two.png',
     engtext: 'two', jptext: 'Ni',sound: 'sounds/numbers/number_two_sound.mp3'),
    Numbers(image_nambers: 'assets/images/numbers/number_three.png',
     engtext: 'three', jptext: 'San',sound: 'sounds/numbers/number_three_sound.mp3'),
    Numbers(image_nambers: 'assets/images/numbers/number_four.png',
     engtext: 'four', jptext: 'Shi',sound: 'sounds/numbers/number_four_sound.mp3')
  , Numbers(image_nambers: 'assets/images/numbers/number_five.png',
   engtext: 'five', jptext: "Go",sound: 'sounds/numbers/number_five_sound.mp3')
  , Numbers(image_nambers: 'assets/images/numbers/number_six.png',
   engtext: 'six', jptext: "Roku",sound: 'sounds/numbers/number_six_sound.mp3')
  ,Numbers(image_nambers: 'assets/images/numbers/number_seven.png',
   engtext: 'seven', jptext: 'Sebun',sound: 'sounds/numbers/number_seven_sound.mp3')
  ,Numbers(image_nambers: 'assets/images/numbers/number_eight.png',
   engtext: 'eight', jptext: 'hachi',sound: 'sounds/numbers/number_eight_sound.mp3')
  ,Numbers(image_nambers: 'assets/images/numbers/number_nine.png',
   engtext: 'nine', jptext: 'Kyu',sound: 'sounds/numbers/number_nine_sound.mp3'),
  Numbers(image_nambers: 'assets/images/numbers/number_ten.png',
   engtext: 'ten', jptext: 'Ju',sound: 'sounds/numbers/number_ten_sound.mp3')
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers'),
        backgroundColor: Color(0xFF10386B),
      ),
      body: ListView.builder(
        itemCount: numbers_item.length,
        itemBuilder: (context, index) {
         return ItemsNumbers(numbers: numbers_item[index],);
        },
        ),
      );
    
  }
}



