import 'package:flutter/material.dart';
import 'package:toku/component/category.dart';
import 'package:toku/screens/ColorsPage.dart';
import 'package:toku/screens/Numbers_page.dart';
import 'package:toku/screens/Phrases.dart';
import 'package:toku/screens/family_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: AppBar(
        title: Text('Toku'),
        backgroundColor: Color(0xFF10386B),
      ),
      backgroundColor: Color(0xFFF1F0BA),
      body: Column(
        children: [
         Category( 
          text: "Numbers",color: Color(0xFF6FBC92),
      
               onTap:(){
                   Navigator.push(context, 
                   MaterialPageRoute(builder: (context){
                    return NumbersPage();
                   })
                   );
               } 
               ),
         Category(
          text: 'FamilyMembers', color:Color(0xFF0073B6),
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return FamilyPage();
            }));
          },
          ),

          Category(
          text:'Colors',color: Color(0xFF77A8D0),
          onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context){
              return ColorsPage();
           }));
          },
          ),
          Category(
             text:'Phrases',color: Color(0xFFB7A761),
             onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return Phrases();
              }));
             },
             ),
          
          
        ],
      ),
    );
  }
}