import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class TotalPatientsTextView extends StatelessWidget {
  const TotalPatientsTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      HOME_PAGE_TOTAL_PATIENTS_TEXT,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: TEXT_13X),
    );
  }
}