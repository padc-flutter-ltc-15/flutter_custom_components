import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class MyPatientsTextView extends StatelessWidget {
  const MyPatientsTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      HOME_PAGE_MY_PATIENTS_TEXT,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: TEXT_18X),
    );
  }
}