import 'package:flutter/material.dart';
import 'package:woltapp/ui/view/home_page.dart';

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
      home: const HomePage(),
    );
  }
}
