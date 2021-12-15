import 'package:flutter/material.dart';

import '../heroes.dart' as hero_model;

class HeroCard extends StatelessWidget {
  final hero_model.Heroes heroes;

  const HeroCard({Key? key, required this.heroes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 10, bottom: 20),
        margin: const EdgeInsets.all(30),
        width: 270,
        height: 500,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(
                heroes.path,
              ).image,
              fit: BoxFit.cover),
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            heroes.name,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.normal),
            textAlign: TextAlign.start,
          ),
        ));
  }
}
