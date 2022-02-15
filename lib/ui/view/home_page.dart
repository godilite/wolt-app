import 'package:flutter/material.dart';
import 'package:woltapp/data/api/wolt_api_client.dart';
import 'package:woltapp/data/models/cordinate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    WoltApiClient()
        .fetchVenues(Cordinate(latitude: 60.170187, longitude: 24.930599));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            const SliverAppBar(
              backgroundColor: Colors.white,
              pinned: true,
              elevation: 2,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Meal Venues",
                  style: TextStyle(
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: [
            Card(
              child: Row(
                children: [Text("The Chance")],
              ),
            ),
            Card(
              child: Row(
                children: [Text("The Chance")],
              ),
            ),
            Card(
              child: Row(
                children: [Text("The Chance")],
              ),
            )
          ],
        ),
      ),
    );
  }
}
