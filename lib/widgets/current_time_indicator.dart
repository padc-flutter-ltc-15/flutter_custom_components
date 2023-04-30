import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/colors.dart';
import '../utils/dimens.dart';

class CurrentTImeIndicator extends StatelessWidget {
  const CurrentTImeIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_15X,
      width: SIZE_15X,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(MARGIN_7X),
      ),
      child: Padding(
        padding: const EdgeInsets.all(MARGIN_3X),
        child: Container(
          decoration: BoxDecoration(
            color: PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(MARGIN_10X),
          ),
        ),
      ),
    );
  }
}