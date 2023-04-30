import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/dimens.dart';
import 'icon_view.dart';

class SearchAndMenuIconsView extends StatelessWidget {
  const SearchAndMenuIconsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        IconView(
          icon: Icons.search,
          size: SIZE_22X,
        ),
        SizedBox(
          width: SIZE_10X,
        ),
        IconView(
          icon: Icons.menu,
          size: SIZE_30X,
        ),
        SizedBox(
          width: SIZE_20X,
        )
      ],
    );
  }
}