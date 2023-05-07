import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_components/widgets/patients_profile_view.dart';

import '../utils/dimens.dart';

class DetailsPageClockIconView extends StatelessWidget {
  final String url;

  const DetailsPageClockIconView({Key? key, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_50X,
      width: SIZE_50X,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(MARGIN_25X),
      ),
      child: Padding(
        padding: const EdgeInsets.all(MARGIN_3X),
        child: PatientProfileView(
          imageUrl: url,
        ),
      ),
    );
  }
}