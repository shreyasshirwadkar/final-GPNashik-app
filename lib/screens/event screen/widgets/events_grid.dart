import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/events.dart';
import './event_item.dart';
import 'package:url_launcher/url_launcher.dart';

class EventsGrid extends StatelessWidget {
  const EventsGrid({super.key});

  Future<void> _refreshEvents(BuildContext context) async {
    await Provider.of<Events>(context, listen: false).fetchAndSetEvents();
  }

  @override
  Widget build(BuildContext context) {
    final eventsData = Provider.of<Events>(context);
    final events = eventsData.items;

    return RefreshIndicator(
      onRefresh: () => _refreshEvents(context),
      child: Scrollbar(
        thumbVisibility: true,
        thickness: 1,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: events.length,
                itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  // create: (c) => events[index],
                  value: events[index],
                  child: const EventItem(
                      // id: events[index].id,
                      // name: events[index].name,
                      // imageUrl: events[index].imageUrl,
                      // date: events[index].date,
                      ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _launchURL('https://gpnashik.ac.in/');
              },
              child: Text(
                'Click for more events',
                style: TextStyle(
                  color: Color.fromARGB(255, 171, 165, 228),
                ),
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Container(
            //     color: Color.fromRGBO(r, g, b, opacity),
            //     width: double.infinity,
            //     margin: EdgeInsets.all(15),
            //     child: TextButton(
            //       onPressed: () {},
            //       child: Text('Click me'),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  Future<void> _launchURL(String urlString) async {
    if (await canLaunch(urlString)) {
      await launch(
        urlString,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      print("Can't launch url");
    }
  }
}
