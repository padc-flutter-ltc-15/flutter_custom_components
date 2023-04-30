import 'package:flutter/cupertino.dart';

import '../utils/dimens.dart';
import 'date_drop_down_view.dart';
import 'my_patients_and_total_patients_texts_view.dart';

class MyPatientsTextsAndDateDropdownView extends StatelessWidget {
  const MyPatientsTextsAndDateDropdownView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_35X),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MyPatientsAndTotalPatientsTextsView(),
          DateDropdownView()
        ],
      ),
    );
  }
}