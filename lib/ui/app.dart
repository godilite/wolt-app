import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:woltapp/data/api/wolt_api_client.dart';
import 'package:woltapp/data/repository/venue_repository_impl.dart';
import 'package:woltapp/ui/view/home_page.dart';
import 'package:http/http.dart' as http;

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wolt App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider<VenueRepositoryImpl>(
        create: (context) => VenueRepositoryImpl(
          woltApiClient: WoltApiClient(httpClient: http.Client()),
        ),
        child: const HomePage(),
      ),
    );
  }
}
