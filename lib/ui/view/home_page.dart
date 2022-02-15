import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woltapp/bloc/venue_bloc.dart';
import 'package:woltapp/data/models/ticker.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VenueBloc>(
      create: (BuildContext context) =>
          VenueBloc(ticker: const Ticker())..add(const VenueEvent.load()),
      child: Scaffold(
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
          body: BlocConsumer<VenueBloc, VenueState>(
            listener: (context, state) {
              if (state is VenueStateLoaded) {}
            },
            builder: (context, state) {
              return state.when(loaded: (items) {
                return ListView(
                  children: [
                    for (final item in items)
                      Card(
                        child: Row(
                          children: [Text("${item.title}")],
                        ),
                      ),
                  ],
                );
              }, loading: () {
                return Column(
                  children: const [
                    SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: SizedBox(
                        height: 30,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ],
                );
              });
            },
          ),
        ),
      ),
    );
  }
}
