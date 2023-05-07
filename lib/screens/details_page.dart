
import 'package:flutter/material.dart';
import 'package:flutter_custom_components/widgets/app_bar_view.dart';
import 'package:flutter_custom_components/widgets/detail_background_color_view.dart';
import 'package:flutter_custom_components/widgets/todo_list_view.dart';
import 'package:flutter_custom_components/custom_layouts/custom_paint_circle.dart';
import 'package:flutter_custom_components/utils/dimens.dart';
import 'package:flutter_custom_components/utils/images.dart';

import '../widgets/details_page_clock_icon_view.dart';
import '../widgets/to_do_work_time_view.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const DetailBackgroundColorView(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, /// Learning again and again
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppBarView(),
                ToDoListView(), /// Learning again and again
              ],
            ),
            const Positioned(
              top: MARGIN_230X,
              left: MARGIN_50X,
              child: CustomCirclePaint(), /// Learning again and again
            ),
            const Positioned(
              top: MARGIN_350X,
              left: MARGIN_150X,
              child: ToDoWorkTimeView(),
            ),
            const Positioned(
              top: MARGIN_500X,
              left: MARGIN_160X,
              child: DetailsPageClockIconView(
                url: PATIENT_THREE,
              ),
            ),
            const Positioned(
              top: MARGIN_420X,
              left: MARGIN_40X,
              child: DetailsPageClockIconView(
                url: PATIENT_TWO,
              ),
            ),
            const Positioned(
              top: MARGIN_250X,
              right: MARGIN_50X,
              child: DetailsPageClockIconView(
                url: PATIENT_ONE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}