import 'package:flutter/material.dart';
import 'package:flutter_custom_components/utils/dimens.dart';

class PatientProfileView extends StatelessWidget {
  final String imageUrl;
  final double size;

  const PatientProfileView({Key? key, required this.imageUrl, this.size = SIZE_22X})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MARGIN_22X),
      ),
      height: size,
      width: size,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
