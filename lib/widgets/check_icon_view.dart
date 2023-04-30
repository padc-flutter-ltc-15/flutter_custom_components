import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class CheckIconView extends StatelessWidget {
  const CheckIconView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MARGIN_20X,
      width: MARGIN_20X,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MARGIN_10X), color: Colors.blue),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: MARGIN_15X,
      ),
    );
  }
}