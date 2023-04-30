
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_components/custom_layouts/smart_list_view.dart';
import 'package:flutter_custom_components/custom_layouts/custom_paint_circle.dart';
import 'package:flutter_custom_components/screens/home_page.dart';
import 'package:flutter_custom_components/utils/Strings.dart';
import 'package:flutter_custom_components/utils/colors.dart';
import 'package:flutter_custom_components/utils/dimens.dart';
import 'package:flutter_custom_components/utils/images.dart';
import 'package:flutter_custom_components/widgets/icon_view.dart';
import 'package:flutter_custom_components/widgets/patients_profile_view.dart';

import '../widgets/my_patients_list.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const BackgroundColorView(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AppBarView(),
                ToDoListView(),
              ],
            ),
            const Positioned(
              top: MARGIN_230X,
              left: MARGIN_50X,
              child: CustomCirclePaint(),
            ),
            const Positioned(
              top: MARGIN_350X,
              left: MARGIN_150X,
              child: ToDoWorkTimeView(),
            ),
            const Positioned(
              top: MARGIN_500X,
              left: MARGIN_160X,
              child: DetailsPageClockIconView(
                url: PATIENT_THREE,
              ),
            ),
            const Positioned(
              top: MARGIN_420X,
              left: MARGIN_40X,
              child: DetailsPageClockIconView(
                url: PATIENT_TWO,
              ),
            ),
            const Positioned(
              top: MARGIN_250X,
              right: MARGIN_50X,
              child: DetailsPageClockIconView(
                url: PATIENT_ONE,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPageClockIconView extends StatelessWidget {
  final String url;

  const DetailsPageClockIconView({Key? key, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_50X,
      width: SIZE_50X,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(MARGIN_25X),
      ),
      child: Padding(
        padding: const EdgeInsets.all(MARGIN_3X),
        child: PatientProfileView(
          imageUrl: url,
        ),
      ),
    );
  }
}

class ToDoWorkTimeView extends StatelessWidget {
  const ToDoWorkTimeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(DETAILS_PAGE_TIME,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500, color: Colors.white, fontSize: TEXT_40X),
        ),
        Text(DETAILS_PAGE_TIME_PM,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w400, color: Colors.white, fontSize: TEXT_25X),
        ),
      ],
    );
  }
}

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

class BackArrowView extends StatelessWidget {
  const BackArrowView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        SizedBox(
          width: SIZE_20X,
        ),
        IconView(
          icon: Icons.keyboard_arrow_left,
          size: SIZE_30X,
        ),
      ],
    );
  }
}

class OfficeNameAndTotalPatientsColumnView extends StatelessWidget {
  const OfficeNameAndTotalPatientsColumnView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_25X),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: SIZE_30X,
          ),
          Text(DETAILS_PAGE_OFFICE_NUMBER_TEXT,
            style: GoogleFonts.inter(
                fontSize: TEXT_17X, color: Colors.white, fontWeight: FontWeight.w600),
          ),
          Text(DETAILS_PAGE_TOTAL_PATIENTS_TEXT,
            style: GoogleFonts.inter(
                fontSize: TEXT_15X, color: Colors.grey, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(DETAILS_PAGE_TITLE_TEXT,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w600, color: Colors.white, fontSize: TEXT_20X),
    );
  }
}

class AppBarLeadingView extends StatelessWidget {
  const AppBarLeadingView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const IconView(
      icon: Icons.keyboard_arrow_left,
      size: SIZE_30X,
    );
  }
}

class BackgroundColorView extends StatelessWidget {
  const BackgroundColorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  DETAILS_SCREEN_GRADIENT_COLOR_ONE,
                  DETAILS_SCREEN_GRADIENT_COLOR_TWO
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            color: PRIMARY_COLOR,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: TERTIARY_COLOR,
          ),
        ),
      ],
    );
  }
}

class ToDoListView extends StatelessWidget {
  const ToDoListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SIZE_180X,
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
