import 'package:flutter/material.dart';
import 'package:toku/Components/listItem.dart';
import 'package:toku/models/item.dart';

class NumbersPage extends StatelessWidget {
  final List<Item> numbers = const [
    Item(
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi'),
    Item(
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'Go'),
    Item(
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'San'),
    Item(
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'Shi'),
    Item(
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'Go'),
    Item(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'Roku'),
    Item(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'Sebunn'),
    Item(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi'),
    Item(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'Kyu'),
    Item(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'Ju')
  ];

  const NumbersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Numbers",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        ),
        body: ListView(children: getList(numbers)));
  }
}

List<Widget> getList(List<Item> numbers) {
  List<Widget> itemsList = [];

  for (int i = 0; i < numbers.length; i++) {
    itemsList.add(ListItem(
      item: numbers[i],
      color: Colors.amber,
    ));
  }
  return itemsList;
}
