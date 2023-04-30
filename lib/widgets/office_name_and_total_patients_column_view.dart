import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class OfficeNameAndTotalPatientsColumnView extends StatelessWidget {
  const OfficeNameAndTotalPatientsColumnView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_25X),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: SIZE_30X,
          ),
          Text(DETAILS_PAGE_OFFICE_NUMBER_TEXT,
            style: GoogleFonts.inter(
                fontSize: TEXT_17X, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(DETAILS_PAGE_TOTAL_PATIENTS_TEXT,
            style: GoogleFonts.inter(
                fontSize: TEXT_15X, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}