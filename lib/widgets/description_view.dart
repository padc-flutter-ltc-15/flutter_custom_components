import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DETAILS_PAGE_DESCRIPTION,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          color: Colors.black26,
          fontSize: TEXT_12X),
      textAlign: TextAlign.start,
    );
  }
}