import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woltapp/bloc/venue_bloc.dart';
import 'package:woltapp/data/models/ticker.dart';
import 'package:woltapp/ui/styles/app_style.dart';
import 'package:woltapp/ui/view/widgets/venue_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VenueBloc>(
      create: (BuildContext context) => VenueBloc(ticker: const Ticker())
        ..add(const VenueEvent.load())
        ..add(const VenueEvent.getFavorites()),
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.white,
                pinned: true,
                elevation: 2,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "Meal Venues",
                    style: AppTextStyle.headline1
                        .copyWith(color: AppColor.darkBlue),
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
                return ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (_, index) => VenueCard(
                    item: items[index],
                  ),
                );
              }, loading: () {
                return Column(
                  children: const [
                    SizedBox(
                      height: 200,
                    ),
                    Center(
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: CircularProgressIndicator(
                          color: AppColor.darkBlue,
                          backgroundColor: AppColor.red,
                        ),
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
