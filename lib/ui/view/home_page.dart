import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
