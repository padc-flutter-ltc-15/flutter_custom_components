import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_components/widgets/patient_name_view.dart';
import 'package:flutter_custom_components/widgets/subtitle_view.dart';

import '../screens/home_page.dart';
import '../utils/dimens.dart';
import 'event_icon_view.dart';

class EventsCardView extends StatelessWidget {
  const EventsCardView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MARGIN_10X),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: SIZE_70X,
        width: SIZE_250X,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EventIconView(
              index: index,
            ),
            const SizedBox(
              width: SIZE_20X,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PatientNameView(
                  index: index,
                ),
                const SizedBox(
                  height: 5,
                ),
                SubtitleView(
                  isDetails: false,
                  color: (index == 0) ? Colors.black12 : Colors.grey,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}