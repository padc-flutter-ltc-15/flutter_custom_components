import 'package:flutter/cupertino.dart';
import 'package:flutter_custom_components/widgets/search_and_menu_icons_view.dart';
import 'package:flutter_custom_components/widgets/title_text.dart';

import '../utils/dimens.dart';
import 'back_arrow_view.dart';
import 'office_name_and_total_patients_column_view.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: SIZE_15X,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            BackArrowView(),
            TitleText(),
            SearchAndMenuIconsView()
          ],
        ),
        const SizedBox(
          height: SIZE_15X,
        ),
        const OfficeNameAndTotalPatientsColumnView(),
      ],
    );
  }
}