import 'package:flutter/material.dart';
import 'package:toku/component/itemsFamily.dart';
import 'package:toku/models/Family.dart';

class FamilyPage extends StatelessWidget {
   FamilyPage({Key? key}) : super(key: key);

  final List<Family> family_items=const [
   Family(
    soundf: 'sounds/family_members/father.wav',
     image_family: 'assets/images/family_members/family_father.png', engtextf: 'Father', jptextf: 'Chichioya'),
     Family(soundf: 'sounds/family_members/daughter.wav', image_family: 'assets/images/family_members/family_daughter.png', engtextf: 'Daughter', jptextf: 'Musume'),
     Family(soundf: 'sounds/family_members/grand father.wav', image_family: 'assets/images/family_members/family_grandfather.png', engtextf: 'grandfather', jptextf: 'Sofu'),
     Family(soundf: 'sounds/family_members/grand mother.wav', image_family: 'assets/images/family_members/family_grandmother.png', engtextf: 'grandmother', jptextf: 'Sobo'),
     Family(soundf: 'sounds/family_members/mother.wav', image_family: 'assets/images/family_members/family_mother.png', engtextf: 'mother', jptextf: 'Hahaoya'),
     Family(soundf: 'sounds/family_members/older bother.wav', image_family: 'assets/images/family_members/family_older_brother.png', engtextf: 'older_brother', jptextf: 'Ani'),
     Family(soundf: 'sounds/family_members/older sister.wav', image_family: 'assets/images/family_members/family_older_sister.png', engtextf: 'older_sister', jptextf: 'Ane'),
     Family(soundf: 'sounds/family_members/son.wav', image_family: 'assets/images/family_members/family_son.png', engtextf: 'son', jptextf: 'Musuko'),
     Family(soundf: 'sounds/family_members/younger brohter.wav', image_family: 'assets/images/family_members/family_younger_brother.png', engtextf: 'younger_brother', jptextf: 'Otōto'),
     Family(soundf: 'sounds/family_members/younger sister.wav', image_family: 'assets/images/family_members/family_younger_sister.png', engtextf: 'younger_sister', jptextf: 'Imōto'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
        backgroundColor: Color(0xFF10386B),
      ),
      body: ListView.builder(
        itemCount: family_items.length,
        itemBuilder: (context, index) {
         return ItemsFamily(family: family_items[index],);
        },
      ),
    );
  }

}