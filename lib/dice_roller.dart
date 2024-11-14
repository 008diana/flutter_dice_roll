import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();//redendant object creation and deletion avoided!

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceRoll = 6;

  void rollDice() {
    setState(() {
      currDiceRoll = randomizer.nextInt(6) + 1;
    });
  }
  @override
  Widget build (context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currDiceRoll.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text("Roll Dice!"),
            )
          ],
        );
  }
}