
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_components/resources/dimens.dart';

class CustomLayout extends StatelessWidget {
  const CustomLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FootballPitchBackgroundView(),
        //FormationView442(),
        //FormationView4231(),
        FormationView343(),
      ],
    );
  }
}

class FormationView442 extends StatelessWidget {
  const FormationView442({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_LARGE_2X),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/50,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/25,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/25,
          ),
          PlayerView(
            isGoalKeeper: true,
          ),
        ],
      ),
    );
  }
}

class FormationView4231 extends StatelessWidget {
  const FormationView4231({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height/10,
          ),
          PlayerView(),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(2, (index) => PlayerView()),
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          PlayerView(
            isGoalKeeper: true,
          ),
        ],
      ),
    );
  }
}

class FormationView343 extends StatelessWidget {
  const FormationView343({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MARGIN_LARGE_2X),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/50,
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(4, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/25,
          ),
          GridView.count(
            crossAxisCount: 3,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: List.generate(3, (index) => PlayerView()),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/25,
          ),
          PlayerView(
            isGoalKeeper: true,
          ),
        ],
      ),
    );
  }
}

class FootballPitchBackgroundView extends StatelessWidget {
  const FootballPitchBackgroundView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image.asset(
        "assets/images/footballpitch.jpeg",
        width: 10,
        height: 10,
        fit: BoxFit.fill,
      ),
    );
  }
}

class PlayerView extends StatelessWidget {

  final bool isGoalKeeper;

  const PlayerView({Key? key, this.isGoalKeeper = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: MARGIN_LARGE,
          height: MARGIN_LARGE,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(MARGIN_MEDIUM_2X),
            color: (isGoalKeeper)?Colors.yellow:Colors.blue
          ),
        ),
      ),
    );
  }
}

