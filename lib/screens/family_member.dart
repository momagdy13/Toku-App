import 'package:flutter/material.dart';
import 'package:toku/Components/listItem.dart';
import 'package:toku/models/item.dart';

class FamilyMemberPage extends StatelessWidget {
  final List<Item> item = const [
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'ichi'),
    Item(
        image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'Go'),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'three',
        jpName: 'San'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'greandmother',
        jpName: 'Shi'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older_brother',
        jpName: 'Go'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older_sister',
        jpName: 'Roku'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'Sebunn'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'family_younger_brother',
        jpName: 'hachi'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'family_younger_sister',
        jpName: 'Kyu'),
  ];

  const FamilyMemberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Member Family',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: ListView(
          children: getList(item),
        ));
  }
}

List<Widget> getList(List<Item> item) {
  List<Widget> itemsList = [];

  for (int i = 0; i < item.length; i++) {
    itemsList.add(ListItem(
      item: item[i],
      color: const Color.fromARGB(255, 193, 96, 0),
    ));
  }
  return itemsList;
}
