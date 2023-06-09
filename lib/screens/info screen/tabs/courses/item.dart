import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

class Item extends StatelessWidget {
  final String post;
  final String imageUrl;
  final String name;

  const Item(
      {super.key,
      required this.post,
      required this.imageUrl,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: kPrimaryLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 4,
        // margin: const EdgeInsets.all(10),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width / 2,
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.height / 14,
                    backgroundImage: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width / 1.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        post,
                        style: const TextStyle(
                          color: kWhite,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Marcellus',
                        ),
                      ),
                      const Divider(
                        thickness: 3,
                        indent: 0,
                        color: kWhite,
                      ),
                      Text(
                        name,
                        style: const TextStyle(
                          color: kWhite,
                          fontSize: 12,
                          fontFamily: 'Marcellus',
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
