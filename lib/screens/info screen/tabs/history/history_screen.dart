import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:timelines/timelines.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  static String routeName = 'HistoryScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HISTORY',
          style: TextStyle(
            fontFamily: 'Marcellus',
            fontSize: 30,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: kPrimaryColor,
      body: ListView(
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Tiles('1980',
                  'Government Polytechnic, Nashik was established in the year 1980. The Government of Maharashtra allotted 30 Acres of land on which stands the majestic & sprawling Government Polytechnic campus. Initially Diploma programme in Civil Engineering with 60 intake was introduced in 1980 & now the institute conducts 10 (Ten) regular Diploma programmes in conventional and diversified areas in two shifts with total intake of 780+66 (Fee waiver scheme)')
            ],
          ),
          Column(
            children: [
              Tiles('1995',
                  'Apart from this, the Institute conducts Staff Development Programmes & Continuing Education Programmes for working employees. Government of Maharashtra Awarded Academic Autonomy to this Institute from the Academic Year 1995-96. ')
            ],
          ),
          Column(
            children: [
              Tiles('2001',
                  'by taking the Advantage of this Golden facility the Institute Aims to grown up the Engineers as per the changing needs of Local Industry, Business & Community using need base Curriculum & as a Result of this the Government of Maharashtra Awarded as Best Polytechnic for the year 2001. ')
            ],
          ),
        ],
      ),
    );
  }

  Widget Tiles(String title, String desc) {
    return Container(
      margin: const EdgeInsets.only(left: 30),
      child: TimelineTile(
        direction: Axis.vertical,
        nodeAlign: TimelineNodeAlign.start,
        node: const TimelineNode(
          indicator: DotIndicator(
            color: kTextWhiteColor,
            size: 30,
          ),
          startConnector: SolidLineConnector(
            color: kTextWhiteColor,
            thickness: 5,
          ),
          endConnector: SolidLineConnector(
            color: kTextWhiteColor,
            thickness: 5,
          ),
        ),
        oppositeContents: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('opposite\ncontents'),
        ),
        contents: Card(
          elevation: 4,
          color: kPrimaryLight,
          child: Container(
            width: 300,
            height: 350,
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Scrollbar(
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: kWhite,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Marcellus',
                      ),
                    ),
                    Text(
                      desc,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        height: 1.5,
                        color: kWhite,
                        fontSize: 15,
                        fontFamily: 'Marcellus',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
