import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import 'icon_view.dart';

class BackArrowView extends StatelessWidget {
  const BackArrowView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: SIZE_20X,
        ),
        IconView(
          icon: Icons.keyboard_arrow_left,
          size: SIZE_30X,
        ),
      ],
    );
  }
}