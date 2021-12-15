import 'package:flutter/material.dart';
import 'package:marvel_app/heroes.dart';
import 'package:marvel_app/hero_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final path = 'images/marvel.png';

  late PageController controller;

  final HeroesList heroes = HeroesList();

  @override
  void initState() {
    controller = PageController(
      initialPage: 0,
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marvel App',
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SizedBox(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 200,
                  height: 100,
                  child: Center(child: Image(image: Image.asset(path).image))),
              const SizedBox(height: 10),
              const Center(
                  child: Text(
                'Choose your hero',
                style: TextStyle(fontSize: 30, color: Colors.white),
              )),
              const SizedBox(height: 20),
              SizedBox(
                width: 400,
                height: 500,
                child: PageView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: heroes.get().length,
                    itemBuilder: (BuildContext context, int index) {
                      return HeroCard(heroes: heroes.get().elementAt(index));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
