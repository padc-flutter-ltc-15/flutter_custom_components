
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import 'date_time_dotted_line_and_events_card_view.dart';

class TimeAndEventsView extends StatelessWidget {
  const TimeAndEventsView(
      {Key? key,
        required this.layerLink,
        required this.timeList,
        required this.index})
      : super(key: key);

  final LayerLink layerLink;
  final List<List<String>> timeList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (index == 0) ? Colors.white.withOpacity(0.1) : Colors.black12,
      child: DateTimeDottedLineAndEventsCardView(
          timeList: timeList,
          index: index,
          layerLink: layerLink
      ),
    );
  }
}