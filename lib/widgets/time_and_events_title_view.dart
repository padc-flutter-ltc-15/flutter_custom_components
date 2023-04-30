import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/Strings.dart';
import '../utils/dimens.dart';

class TimeAndEventsTitleView extends StatelessWidget {
  const TimeAndEventsTitleView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_45X,
      color: Colors.white.withOpacity(0.1),
      child: Row(
        children: [
          SizedBox(
            width: SIZE_60X,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                HOME_PAGE_TIME_TEXT,
                style: GoogleFonts.inter(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            width: SIZE_20X,
          ),
          const Padding(
            padding: EdgeInsets.only(top: MARGIN_10X),
            child: DottedLine(
              direction: Axis.vertical,
              dashColor: Colors.black38,
              dashLength: SIZE_5X,
              lineLength: SIZE_40X,
            ),
          ),
          const SizedBox(
            width: SIZE_20X,
          ),
          Text(
            HOME_PAGE_EVENTS_TEXT,
            style: GoogleFonts.inter(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}