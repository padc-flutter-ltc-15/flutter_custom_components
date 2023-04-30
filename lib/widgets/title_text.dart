import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(DETAILS_PAGE_TITLE_TEXT,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w600, color: Colors.white, fontSize: TEXT_20X),
    );
  }
}