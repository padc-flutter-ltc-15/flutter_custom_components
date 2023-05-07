import 'package:flutter/cupertino.dart';

import '../utils/dimens.dart';
import 'date_time_view.dart';
import 'dotted_line_and_current_time_indicator.dart';
import 'events_card_view.dart';

class DateTimeDottedLineAndEventsCardView extends StatelessWidget {
  const DateTimeDottedLineAndEventsCardView({
    Key? key,
    required this.index,
    required this.timeList,
    required this.layerLink,
  }) : super(key: key);

  final List<List<String>> timeList;
  final int index;
  final LayerLink layerLink;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DateTimeView(
          timeList: timeList,
          index: index,
        ),
        const SizedBox(
          width: SIZE_20X,
        ),
        (index == 0)? CompositedTransformTarget( /// Learning again and again
          link: layerLink, /// Learning again and again
          child: DottedLineAndCurrentTimeIndicator(
            index: index,
          ),
        ) : DottedLineAndCurrentTimeIndicator(
          index: index,
        ),
        const SizedBox(
          width: SIZE_20X,
        ),
        EventsCardView(
          index: index,
        ),
      ],
    );
  }
}