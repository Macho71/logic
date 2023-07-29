import 'package:flutter/material.dart';

import 'package:logic/view/info_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Widget"),
      ),
      body: Center(
        child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return InfoPage();
              }));
            },
            child: Hero(
              tag: "hero-tag",
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            )),
      ),
    );
  }
}

class  HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Detail Page'),
      ),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Container(
            width: 400,
            height: 400,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
