import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/src/badge.dart' as badge;

import '../utils/dimens.dart';
import '../utils/images.dart';

class ProfileImageView extends StatelessWidget {
  const ProfileImageView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return badge.Badge(
      badgeContent: Text(
        "2",
        style:
        GoogleFonts.inter(color: Colors.white, fontWeight: FontWeight.w500),
      ),
      badgeStyle: const BadgeStyle(),
      child: Container(
        height: SIZE_50X,
        width: SIZE_50X,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MARGIN_25X),
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(MARGIN_3X),
          child: Container( /// Learning again and again
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration( /// Learning again and again
              borderRadius: BorderRadius.circular(MARGIN_20X), /// Learning again and again
            ),
            child: Image.asset(
              PATIENT_ONE,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}