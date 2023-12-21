import 'package:first_app/Subview/dice_roller.dart';
import 'package:flutter/material.dart';


class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 139, 26, 187), 
                Colors.black
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topLeft
              )
              ),
          child: const Center(
            child: DiceRoller()
          )
        );
  }
}