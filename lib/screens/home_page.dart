
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_custom_components/custom_layouts/smart_list_view.dart';
import 'package:flutter_custom_components/screens/details_page.dart';
import 'package:flutter_custom_components/utils/Strings.dart';
import 'package:flutter_custom_components/utils/colors.dart';
import 'package:flutter_custom_components/utils/dimens.dart';

import '../widgets/background_color_view.dart';
import '../widgets/current_time_indicator.dart';
import '../widgets/my_patients_list.dart';
import '../widgets/my_patients_texts_and_date_drop_down_view.dart';
import '../widgets/search_bar_and_profile_view.dart';
import '../widgets/time_and_events_title_view.dart';
import '../widgets/time_and_events_view.dart';

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
                  TimeAndEventsTitleView(),
                  Stack(
                    children: [
                      RefreshIndicator(
                        onRefresh: () => _refresh(),
                        child: SizedBox(
                          height: SIZE_400X,
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
                        targetAnchor: Alignment.bottomCenter,
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
