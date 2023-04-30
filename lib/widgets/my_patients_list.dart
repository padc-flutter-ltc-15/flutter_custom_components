import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_components/widgets/patients_and_check_row_view.dart';
import 'package:flutter_custom_components/widgets/subtitle_view.dart';
import 'package:flutter_custom_components/widgets/title_view.dart';

import '../resources/colors.dart';
import '../utils/colors.dart';
import '../utils/dimens.dart';
import 'description_view.dart';

class MyPatientsList extends StatelessWidget {
  final bool isDetails;

  const MyPatientsList({Key? key, this.isDetails = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_8X),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: isDetails
              ? BorderRadius.circular(MARGIN_8X)
              : BorderRadius.circular(MARGIN_6X),
        ),
        elevation: MARGIN_1X,
        child: Container(
          width: isDetails ? SIZE_280X : SIZE_200X,
          decoration:
          BoxDecoration(color: isDetails ? Colors.white : HOME_SCREEN_GRADIENT_COLOR_ONE),
          child: Padding(
            padding: isDetails
                ? const EdgeInsets.symmetric(horizontal: MARGIN_15X)
                : const EdgeInsets.symmetric(horizontal: MARGIN_10X),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleView(
                  isDetails: isDetails,
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                SubtitleView(
                  isDetails: isDetails,
                  color: Colors.white70,
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                Visibility(
                  visible: isDetails,
                  child: const DescriptionView(),
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                PatientsAndCheckRowView(isDetails: isDetails)
              ],
            ),
          ),
        ),
      ),
    );
  }
}