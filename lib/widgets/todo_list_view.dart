import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../custom_layouts/smart_list_view.dart';
import '../resources/colors.dart';
import '../utils/Strings.dart';
import '../utils/dimens.dart';
import 'my_patients_list.dart';

class ToDoListView extends StatelessWidget {
  const ToDoListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SIZE_150X,
          child: SmartListView(
            itemCount: 5,
            padding: const EdgeInsets.symmetric(horizontal: MARGIN_25X),
            itemBuilder: (context, index) {
              return const MyPatientsList(
                isDetails: true,
              );
            },
            scrollDirection: Axis.horizontal,
            onListEndReached: () => _showSnackBar(context),
            onEmptyList: () => debugPrint(EMPTY_LIST_TEXT),
          ),
        ),
        const SizedBox(
          height: SIZE_40X,
        )
      ],
    );
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: PRIMARY_COLOR,
        content: Text(END_LIST_DIALOG_TEXt,
          style: GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}