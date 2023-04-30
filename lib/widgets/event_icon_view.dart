import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimens.dart';

class EventIconView extends StatelessWidget {
  const EventIconView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_30X,
      width: SIZE_30X,
      decoration: BoxDecoration(
        color: (index == 0)
            ? HOME_SCREEN_DISABLED_ICON_BACKGROUND_COLOR
            : HOME_SCREEN_ICON_BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(MARGIN_15X),
      ),
      child: Icon(
        Icons.add_chart,
        size: SIZE_16X,
        color: (index == 0) ? Colors.grey : SECONDARY_COLOR,
      ),
    );
  }
}