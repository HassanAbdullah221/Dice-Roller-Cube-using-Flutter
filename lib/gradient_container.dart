import 'package:cube_project/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.color1, this.color2, this.color3, {super.key});

  final Color color1;
  final Color color2;
  final Color color3;
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    activeDiceImage = 'assets/images/dice-1.png';
    print("Changed");
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2, color3],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(child: DiceRoller()),
        ),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Scaffold(
//         body: Center(
//       child: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: colors,
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: StyledText('Hello World'),
//       ),
//     ));
//   }
// }
