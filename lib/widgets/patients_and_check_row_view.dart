
import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_components/widgets/patients_profile_view.dart';

import '../utils/dimens.dart';
import '../utils/images.dart';
import 'check_icon_view.dart';

class PatientsAndCheckRowView extends StatelessWidget {
  const PatientsAndCheckRowView({
    Key? key,
    required this.isDetails,
  }) : super(key: key);

  final bool isDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const PatientProfileView(
          imageUrl: PATIENT_ONE,
        ),
        const SizedBox(
          width: MARGIN_5X,
        ),
        const PatientProfileView(
          imageUrl: PATIENT_TWO,
        ),
        const SizedBox(
          width: MARGIN_5X,
        ),
        const PatientProfileView(
          imageUrl: PATIENT_THREE,
        ),
        const Spacer(),
        Visibility(
          visible: !isDetails,
          child: const CheckIconView(),
        )
      ],
    );
  }
}