import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class Members extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String sub;

  const Members({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1),
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Card(
            color: kPrimaryLight,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            margin: const EdgeInsets.all(8),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage(
                        imageUrl,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 6.2,
                      width: MediaQuery.of(context).size.width / 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              name,
                              style: const TextStyle(
                                color: kWhite,
                                fontSize: 20,
                                fontFamily: 'Marcellus',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Divider(
                            thickness: 3,
                            indent: 0,
                            color: kWhite,
                          ),
                          Center(
                            child: Text(
                              sub,
                              style: TextStyle(
                                fontFamily: 'Marcellus',
                                fontSize: 15,
                                color: kWhite,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
