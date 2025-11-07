import 'package:flutter/material.dart';
import 'custom.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required String name});
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Zaf",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.chat, size: 25)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, size: 25),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [




          ],
        ),
      ),
    );
  }
}
