import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class SubtitleView extends StatelessWidget {
  final bool isDetails;
  final Color color;

  const SubtitleView(
      {Key? key, required this.isDetails, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDetails
        ? Text(
      DETAILS_PAGE_TEETH_DRILLING,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          fontSize: TEXT_15X,
          color: Colors.black),
    )
        : Row(
      children: [
        Icon(
          Icons.access_time,
          color: color,
          size: MARGIN_15X,
        ),
        const SizedBox(
          width: MARGIN_5X,
        ),
        Text(
          TO_DO_DATETIME_TEXT,
          style: GoogleFonts.inter(
              color: color, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}