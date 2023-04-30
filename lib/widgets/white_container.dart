import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.1),
      height: SIZE_25X,
    );
  }
}