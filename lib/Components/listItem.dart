import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.item, required this.color});
  final Item item;
  final Color color;

  @override
  Widget build(BuildContext context) {
    AudioCache.instance = AudioCache(prefix: '');
    final player = Audi oPlayer();
    return Container(
        height: 100,
        color: color,
        child: Row(children: [
          Container(
              color: const Color.fromARGB(255, 255, 242, 202),
              child: Image.asset(item.image)),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(item.enName,
                    style: const TextStyle(fontSize: 22, color: Colors.white))
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () async {
                await player.play(
                    AssetSource('assets/sounds/numbers/number_one_sound.mp3'));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 28,
              ))
        ]));
  }
}
