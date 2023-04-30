import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class ToDoWorkTimeView extends StatelessWidget {
  const ToDoWorkTimeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(DETAILS_PAGE_TIME,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: TEXT_40X),
        ),
        Text(DETAILS_PAGE_TIME_PM,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: TEXT_25X),
        ),
      ],
    );
  }
}