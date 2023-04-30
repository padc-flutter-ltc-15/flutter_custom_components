import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';

class BackGroundColorView extends StatelessWidget {
  const BackGroundColorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  HOME_SCREEN_GRADIENT_COLOR_ONE,
                  HOME_SCREEN_GRADIENT_COLOR_TWO
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Container(
            color: Colors.white.withOpacity(0.01),
          ),
        ),
      ],
    );
  }
}