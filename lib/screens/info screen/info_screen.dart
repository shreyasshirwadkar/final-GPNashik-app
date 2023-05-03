import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/screens/info%20screen/tabs/executive%20screen/executive_screen.dart';
import 'package:myapp/screens/info%20screen/tabs/gallery/gallery_screen.dart';
import 'package:myapp/screens/info%20screen/tabs/history/history_screen.dart';
import 'component.dart';
import 'tabs/courses/courses_screen.dart';

class InfoScreen extends StatefulWidget {
  static String routeName = 'InfoScreen';

  const InfoScreen({Key? key}) : super(key: key);

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          //upper part
          Expanded(
            flex: 8,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/clg4.jpg',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  opacity: const AlwaysStoppedAnimation(.4),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.9,
                  //color: kPrimaryColor,
                  child: Center(
                    child: Text(
                      "'Education is the most powerful weapon which you can use to change the world.'",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.satisfy(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(5.0, 5.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //lower part
          Expanded(
            flex: 10,
            child: Container(
              color: kPrimaryColor,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: kEventItemCard,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Material(
                        elevation: 4,
                        color: kTextBlackColor,
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.height / 12,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Text(
                            "ABOUT GPN",
                            style: TextStyle(
                              fontFamily: 'Marcellus',
                              fontSize: 25,
                              color: kTextWhiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 1,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Tabs(
                                  imagePath: 'assets/images/executive.jpg',
                                  title: 'EXECUTIVE',
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Exec()),
                                    );
                                  },
                                ),
                                Tabs(
                                  imagePath: 'assets/images/courses.png',
                                  title: 'COURSES',
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CoursesScreen()),
                                    );
                                  },
                                ),
                                Tabs(
                                  imagePath: 'assets/images/history.png',
                                  title: 'HISTORY',
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HistoryScreen()),
                                    );
                                  },
                                ),
                                Tabs(
                                  imagePath: 'assets/images/gallery.png',
                                  title: 'GALLERY',
                                  onPress: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const GalleryScreen()),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      //  SizedBox(height: MediaQuery.of(context).size.height/200,)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
