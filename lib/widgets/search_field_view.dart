import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/colors.dart';
import '../utils/Strings.dart';
import '../utils/dimens.dart';

class SearchFieldView extends StatelessWidget {
  const SearchFieldView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SIZE_250X,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(MARGIN_25X),
      ),
      child: TextField(
        cursorHeight: 0,
        cursorWidth: 0,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: MARGIN_20X, vertical: MARGIN_12X),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: HOME_PAGE_SEARCH_FIELD_TEXT,
          hintStyle: GoogleFonts.inter(
              color: Colors.grey, fontWeight: FontWeight.w500),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}