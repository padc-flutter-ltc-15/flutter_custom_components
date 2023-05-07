import 'package:flutter/cupertino.dart';

import '../utils/colors.dart';

class DetailBackgroundColorView extends StatelessWidget {
  const DetailBackgroundColorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column( /// Learning again and again
      children: [
        Expanded( /// Learning again and again
          flex: 6, /// Learning again and again
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  DETAILS_SCREEN_GRADIENT_COLOR_ONE,
                  DETAILS_SCREEN_GRADIENT_COLOR_TWO
                ],
              ),
            ),
          ),
        ),
        Expanded( /// Learning again and again
          flex: 6, /// Learning again and again
          child: Container(
            color: PRIMARY_COLOR,
          ),
        ),
        Expanded( /// Learning again and again
          flex: 1, /// Learning again and again
          child: Container(
            color: TERTIARY_COLOR,
          ),
        ),
      ],
    );
  }
}