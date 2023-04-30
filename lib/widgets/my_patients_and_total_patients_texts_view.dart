import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_components/widgets/total_patients_text_view.dart';

import 'my_patients_text_view.dart';

class MyPatientsAndTotalPatientsTextsView extends StatelessWidget {
  const MyPatientsAndTotalPatientsTextsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MyPatientsTextView(),
        TotalPatientsTextView(),
      ],
    );
  }
}