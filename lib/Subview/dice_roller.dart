import 'package:first_app/Subview/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  
  @override
  State<DiceRoller> createState() {
  return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
        activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
  
  @override
  Widget build(BuildContext context) {
  return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              const CustomTextStyle('Jogo dos dados'),
              Image.asset(activeDiceImage, width: 200,),
              const SizedBox(height: 20,),
              ElevatedButton(
                onPressed: rollDice,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.amber,
                  textStyle: const TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold
                  )
                  ),
                child: const Text('Rolar o dado')
                )
              ]
            );           
  }
}