import 'package:flutter/material.dart';
import '../../constants.dart';

class Tabs extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onPress;
  const Tabs({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Tabs cards = componentList[index];
    return GestureDetector(
      onTap: onPress,
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.5,
        height: MediaQuery.of(context).size.height / 2,
        child: Card(
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.all(10),
          elevation: 12,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 15,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 300,
                ),
                Expanded(
                  flex: 4,
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        color: kTextWhiteColor,
                        fontFamily: 'Marcellus',

                        //height: MediaQuery.of(context).size.height/250,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
