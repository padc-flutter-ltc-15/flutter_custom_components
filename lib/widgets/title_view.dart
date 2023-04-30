import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import 'office_name_and_total_patients_view.dart';

class TitleView extends StatelessWidget {
  final bool isDetails;

  const TitleView({Key? key, required this.isDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDetails
        ? const OfficeNameAndTotalPatientsView()
        : Text(
      HOME_PAGE_LIST_VIEW_TITLE_TEXT,
      style: GoogleFonts.inter(
          color: Colors.white, fontWeight: FontWeight.w500),
    );
  }
}