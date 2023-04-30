import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/colors.dart';
import '../utils/dimens.dart';

class DateDropdownView extends StatelessWidget {
  const DateDropdownView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_35X,
      width: SIZE_85X,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MARGIN_5X),
          color: LIGHT_BLUE_COLOR),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              HOME_PAGE_DATE_TEXT,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600, color: Colors.white),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}