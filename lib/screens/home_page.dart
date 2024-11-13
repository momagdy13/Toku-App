import 'package:flutter/material.dart';
import 'package:toku/Components/category_item.dart';
import 'package:toku/screens/family_member.dart';
import 'package:toku/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 241, 199),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          Category(
            color: const Color.fromARGB(255, 35, 46, 1),
            text: 'Numbers',
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const NumbersPage();
              }));
            },
          ),
          Category(
            color: const Color.fromARGB(255, 59, 50, 71),
            text: "FamilyMembers",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMemberPage();
              }));
            },
          ),
          Category(
            color: Colors.amber,
            text: "Colors",
          ),
          Category(
            color: const Color.fromARGB(255, 0, 62, 90),
            text: "Pharases",
          ),
        ],
      ),
    );
  }
}
