import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';

class PatientNameView extends StatelessWidget {
  const PatientNameView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      HOME_PAGE_PATIENT_NAME_TEXT,
      style: GoogleFonts.inter(
          color: (index == 0) ? Colors.black12 : Colors.black,
          fontWeight: FontWeight.w600),
    );
  }
}