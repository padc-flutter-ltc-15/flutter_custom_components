import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/dimens.dart';

class DateTimeView extends StatelessWidget {
  const DateTimeView({Key? key, required this.timeList, required this.index})
      : super(key: key);

  final List<List<String>> timeList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SIZE_57X,
      width: SIZE_60X,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            timeList[index][0],
            style: GoogleFonts.inter(fontWeight: FontWeight.w500),
          ),
          Text(
            timeList[index][1],
            style: GoogleFonts.inter(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}