import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import 'icon_view.dart';

class AppBarLeadingView extends StatelessWidget {
  const AppBarLeadingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconView(
      icon: Icons.keyboard_arrow_left,
      size: SIZE_30X,
    );
  }
}