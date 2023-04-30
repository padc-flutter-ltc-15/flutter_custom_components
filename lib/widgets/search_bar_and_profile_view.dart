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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SearchFieldView(),
          ProfileImageView(),
        ],
      ),
    );
  }
}