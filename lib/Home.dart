import 'package:flutter/material.dart';
import 'package:scrollbehaviour/CustomScrollBehaviour.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomScroll(),
      child: Scaffold(
        body: ListView.builder(
            itemCount: 25,
            itemBuilder: (context, i) {
              return ListTile(
                title: const Text(
                    "\"Make Yourself The Software Developer: Let's Dive Into Flutter & MNCs.\" -By Lakshydeep Vikram",
                    style: TextStyle(fontWeight: FontWeight.w900)),
                subtitle: const Text(
                  "Book Available on Amazon",
                ),
                tileColor: i % 2 == 0 ? Colors.white10 : Colors.grey,
              );
            }),
      ),
    );
  }
}
