import 'package:badges/badges.dart';
import 'package:badges/src/badge.dart' as badge;
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_components/custom_layouts/smart_list_view.dart';
import 'package:flutter_custom_components/screens/details_page.dart';
import 'package:flutter_custom_components/utils/Strings.dart';
import 'package:flutter_custom_components/utils/colors.dart';
import 'package:flutter_custom_components/utils/dimens.dart';
import 'package:flutter_custom_components/utils/images.dart';
import 'package:flutter_custom_components/widgets/office_name_and_total_patients_view.dart';
import 'package:flutter_custom_components/widgets/patients_profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final layerLink = LayerLink();
  final List<List<String>> timeList = [
    ["8:00", "8:30"],
    ["9:00", "9:30"],
    ["10:00", "10:30"],
    ["11:00", "11:30"],
    ["12:00", "12:30"],
    ["13:00", "13:30"],
    ["14:00", "14:30"],
    ["15:00", "15:30"],
    ["16:00", "16:30"],
    ["17:00", "17:30"],
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned.fill(
              child: BackGroundColorView(),
            ),
            Positioned.fill(
              child: Column(
                children: [
                  const SizedBox(
                    height: SIZE_30X,
                  ),
                  const SearchBarAndProfileView(),
                  const SizedBox(
                    height: SIZE_30X,
                  ),
                  const MyPatientsTextsAndDateDropdownView(),
                  const SizedBox(
                    height: SIZE_30X,
                  ),
                  SizedBox(
                    height: SIZE_100X,
                    child: SmartListView(
                      itemCount: 5,
                      padding: const EdgeInsets.symmetric(horizontal: MARGIN_25X),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () => _navigateToDetailsScreen(context),
                          child: const MyPatientsList(),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      onListEndReached: () => _showSnackBar(context),
                      onEmptyList: () => debugPrint(EMPTY_LIST_TEXT),
                    ),
                  ),
                  Stack(
                    children: [
                      RefreshIndicator(
                        onRefresh: () => _refresh(),
                        child: SizedBox(
                          height: SIZE_540X,
                          child: SmartListView(
                            itemCount: 10,
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            onListEndReached: () => _showSnackBar(context),
                            onEmptyList: () => debugPrint(EMPTY_LIST_TEXT),
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  if (!(index == 0)) {
                                    _navigateToDetailsScreen(context);
                                  }
                                },
                                child: TimeAndEventsView(
                                  layerLink: layerLink,
                                  timeList: timeList,
                                  index: index,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      CompositedTransformFollower(
                        link: layerLink,
                        showWhenUnlinked: false,
                        offset: const Offset(OFFSET_73, OFFSET_117),
                        child: const CurrentTImeIndicator(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _refresh() async {
    return Future.delayed(
      const Duration(seconds: 2),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> _showSnackBar(
      BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 1),
        backgroundColor: PRIMARY_COLOR,
        content: Text(
          END_LIST_DIALOG_TEXt,
          style: GoogleFonts.inter(
              color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  Future<dynamic> _navigateToDetailsScreen(BuildContext context) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const DetailsPage(),
      ),
    );
  }
}

class TimeAndEventsView extends StatelessWidget {
  const TimeAndEventsView(
      {Key? key,
      required this.layerLink,
      required this.timeList,
      required this.index})
      : super(key: key);

  final LayerLink layerLink;
  final List<List<String>> timeList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (index == 0) ? Colors.white.withOpacity(0.1) : Colors.black12,
      height: (index == 0) ? SIZE_150X : SIZE_80X,
      child: Column(
        children: [
          TimeEventsTitleView(
            layerLink: layerLink,
            index: index,
          ),
          DateTimeDottedLineAndEventsCardView(
            timeList: timeList,
            index: index,
          ),
        ],
      ),
    );
  }
}

class TimeEventsTitleView extends StatelessWidget {
  const TimeEventsTitleView({
    Key? key,
    required this.index,
    required this.layerLink,
  }) : super(key: key);

  final LayerLink layerLink;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: (index == 0),
      child: Column(
        children: [
          const WhiteContainer(),
          CompositedTransformTarget(
            link: layerLink,
            child: const TimeAndEventsTitleView(),
          ),
        ],
      ),
    );
  }
}

class DateTimeDottedLineAndEventsCardView extends StatelessWidget {
  const DateTimeDottedLineAndEventsCardView({
    Key? key,
    required this.index,
    required this.timeList,
  }) : super(key: key);

  final List<List<String>> timeList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DateTimeView(
          timeList: timeList,
          index: index,
        ),
        const SizedBox(
          width: SIZE_20X,
        ),
        DottedLineAndCurrentTimeIndicator(
          index: index,
        ),
        const SizedBox(
          width: SIZE_20X,
        ),
        EventsCardView(
          index: index,
        ),
      ],
    );
  }
}

class TimeAndEventsTitleView extends StatelessWidget {
  const TimeAndEventsTitleView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_45X,
      color: Colors.yellow.withOpacity(0.1),
      child: Row(
        children: [
          SizedBox(
            width: SIZE_60X,
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                HOME_PAGE_TIME_TEXT,
                style: GoogleFonts.inter(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            width: SIZE_20X,
          ),
          const Padding(
            padding: EdgeInsets.only(top: MARGIN_10X),
            child: DottedLine(
              direction: Axis.vertical,
              dashColor: Colors.black38,
              dashLength: SIZE_5X,
              lineLength: SIZE_40X,
            ),
          ),
          const SizedBox(
            width: SIZE_20X,
          ),
          Text(
            HOME_PAGE_EVENTS_TEXT,
            style: GoogleFonts.inter(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.1),
      height: SIZE_25X,
    );
  }
}

class EventsCardView extends StatelessWidget {
  const EventsCardView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.5,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MARGIN_10X),
      ),
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: SIZE_70X,
        width: SIZE_250X,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EventIconView(
              index: index,
            ),
            const SizedBox(
              width: SIZE_20X,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PatientNameView(
                  index: index,
                ),
                const SizedBox(
                  height: 5,
                ),
                SubtitleView(
                  isDetails: false,
                  color: (index == 0) ? Colors.black12 : Colors.grey,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PatientNameView extends StatelessWidget {
  const PatientNameView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      HOME_PAGE_PATIENT_NAME_TEXT,
      style: GoogleFonts.inter(
          color: (index == 0) ? Colors.black12 : Colors.black,
          fontWeight: FontWeight.w600),
    );
  }
}

class EventIconView extends StatelessWidget {
  const EventIconView({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_30X,
      width: SIZE_30X,
      decoration: BoxDecoration(
        color: (index == 0)
            ? HOME_SCREEN_DISABLED_ICON_BACKGROUND_COLOR
            : HOME_SCREEN_ICON_BACKGROUND_COLOR,
        borderRadius: BorderRadius.circular(MARGIN_15X),
      ),
      child: Icon(
        Icons.add_chart,
        size: SIZE_16X,
        color: (index == 0) ? Colors.grey : SECONDARY_COLOR,
      ),
    );
  }
}

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

class MyPatientsTextsAndDateDropdownView extends StatelessWidget {
  const MyPatientsTextsAndDateDropdownView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_35X),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          MyPatientsAndTotalPatientsTextsView(),
          DateDropdownView()
        ],
      ),
    );
  }
}

class MyPatientsAndTotalPatientsTextsView extends StatelessWidget {
  const MyPatientsAndTotalPatientsTextsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        MyPatientsTextView(),
        TotalPatientsTextView(),
      ],
    );
  }
}

class TotalPatientsTextView extends StatelessWidget {
  const TotalPatientsTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      HOME_PAGE_TOTAL_PATIENTS_TEXT,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: TEXT_13X),
    );
  }
}

class MyPatientsTextView extends StatelessWidget {
  const MyPatientsTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      HOME_PAGE_MY_PATIENTS_TEXT,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w500, color: Colors.white, fontSize: TEXT_18X),
    );
  }
}

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
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(MARGIN_20X),
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

class SearchFieldView extends StatelessWidget {
  const SearchFieldView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SIZE_250X,
      decoration: BoxDecoration(
        color: SECONDARY_COLOR,
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
              color: Colors.white54, fontWeight: FontWeight.w500),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white54,
          ),
        ),
      ),
    );
  }
}

class DottedLineAndCurrentTimeIndicator extends StatelessWidget {
  final int index;

  const DottedLineAndCurrentTimeIndicator({Key? key, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedLine(
      lineLength: (index == 0) ? SIZE_80X : SIZE_80X,
      dashLength: (index == 0) ? SIZE_5X : SIZE_80X,
      dashColor: (index == 0) ? Colors.black38 : Colors.black12,
      direction: Axis.vertical,
    );
  }
}

class CurrentTImeIndicator extends StatelessWidget {
  const CurrentTImeIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_15X,
      width: SIZE_15X,
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(MARGIN_7X),
      ),
      child: Padding(
        padding: const EdgeInsets.all(MARGIN_3X),
        child: Container(
          decoration: BoxDecoration(
            color: PRIMARY_COLOR,
            borderRadius: BorderRadius.circular(MARGIN_10X),
          ),
        ),
      ),
    );
  }
}

class DateDropdownView extends StatelessWidget {
  const DateDropdownView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SIZE_35X,
      width: SIZE_85X,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MARGIN_5X),
          color: LIGHT_BLUE_COLOR),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              HOME_PAGE_DATE_TEXT,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600, color: Colors.white),
            ),
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class BackGroundColorView extends StatelessWidget {
  const BackGroundColorView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  HOME_SCREEN_GRADIENT_COLOR_ONE,
                  HOME_SCREEN_GRADIENT_COLOR_TWO
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 9,
          child: Container(
            color: Colors.white.withOpacity(0.01),
          ),
        ),
      ],
    );
  }
}

class MyPatientsList extends StatelessWidget {
  final bool isDetails;

  const MyPatientsList({Key? key, this.isDetails = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MARGIN_8X),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: isDetails
              ? BorderRadius.circular(MARGIN_8X)
              : BorderRadius.circular(MARGIN_6X),
        ),
        elevation: MARGIN_1X,
        child: Container(
          width: isDetails ? SIZE_280X : SIZE_200X,
          decoration:
              BoxDecoration(color: isDetails ? Colors.white : SECONDARY_COLOR),
          child: Padding(
            padding: isDetails
                ? const EdgeInsets.symmetric(horizontal: MARGIN_15X)
                : const EdgeInsets.symmetric(horizontal: MARGIN_10X),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TitleView(
                  isDetails: isDetails,
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                SubtitleView(
                  isDetails: isDetails,
                  color: Colors.white70,
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                Visibility(
                  visible: isDetails,
                  child: const DescriptionView(),
                ),
                const SizedBox(
                  height: MARGIN_8X,
                ),
                PatientsAndCheckRowView(isDetails: isDetails)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DescriptionView extends StatelessWidget {
  const DescriptionView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      DETAILS_PAGE_DESCRIPTION,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.w600,
          color: Colors.black26,
          fontSize: TEXT_12X),
      textAlign: TextAlign.start,
    );
  }
}

class TitleView extends StatelessWidget {
  final bool isDetails;

  const TitleView({Key? key, required this.isDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDetails
        ? const OfficeNameAndTotalPatientsView()
        : Text(
            HOME_PAGE_LIST_VIEW_TITLE_TEXT,
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.w500),
          );
  }
}

class SubtitleView extends StatelessWidget {
  final bool isDetails;
  final Color color;

  const SubtitleView(
      {Key? key, required this.isDetails, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDetails
        ? Text(
            DETAILS_PAGE_TEETH_DRILLING,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: TEXT_15X,
                color: Colors.black),
          )
        : Row(
            children: [
              Icon(
                Icons.access_time,
                color: color,
                size: MARGIN_15X,
              ),
              const SizedBox(
                width: MARGIN_5X,
              ),
              Text(
                TO_DO_DATETIME_TEXT,
                style: GoogleFonts.inter(
                    color: color, fontWeight: FontWeight.w500),
              ),
            ],
          );
  }
}

class PatientsAndCheckRowView extends StatelessWidget {
  const PatientsAndCheckRowView({
    Key? key,
    required this.isDetails,
  }) : super(key: key);

  final bool isDetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const PatientProfileView(
          imageUrl: PATIENT_ONE,
        ),
        const SizedBox(
          width: MARGIN_5X,
        ),
        const PatientProfileView(
          imageUrl: PATIENT_TWO,
        ),
        const SizedBox(
          width: MARGIN_5X,
        ),
        const PatientProfileView(
          imageUrl: PATIENT_THREE,
        ),
        const Spacer(),
        Visibility(
          visible: !isDetails,
          child: const CheckIconView(),
        )
      ],
    );
  }
}

class CheckIconView extends StatelessWidget {
  const CheckIconView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MARGIN_20X,
      width: MARGIN_20X,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MARGIN_10X), color: Colors.blue),
      child: const Icon(
        Icons.check,
        color: Colors.white,
        size: MARGIN_15X,
      ),
    );
  }
}
