import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_components/widgets/profile_image_view.dart';
import 'package:flutter_custom_components/widgets/search_field_view.dart';

import '../utils/dimens.dart';

class SearchBarAndProfileView extends StatelessWidget {
  const SearchBarAndProfileView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_35X),
      child: Row( /// Learning again and again
        mainAxisAlignment: MainAxisAlignment.spaceBetween, /// Learning again and again
        children: const [
          SearchFieldView(),
          ProfileImageView(),
        ],
      ),
    );
  }
}