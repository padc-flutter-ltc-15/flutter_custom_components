import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';

class DottedLineAndCurrentTimeIndicator extends StatelessWidget {
  final int index;

  const DottedLineAndCurrentTimeIndicator({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      lineLength: (index == 0) ? SIZE_80X : SIZE_80X,
      dashLength: (index == 0) ? SIZE_5X : SIZE_80X,
      dashColor: (index == 0) ? Colors.black38 : Colors.black12,
      direction: Axis.vertical,
    );
  }
}