import 'package:flutter/cupertino.dart';

import '../utils/colors.dart';

class DetailBackgroundColorView extends StatelessWidget {
  const DetailBackgroundColorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
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
        Expanded(
          flex: 6,
          child: Container(
            color: PRIMARY_COLOR,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: TERTIARY_COLOR,
          ),
        ),
      ],
    );
  }
}