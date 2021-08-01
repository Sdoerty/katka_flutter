import 'package:flutter/material.dart';
import 'package:katka/pages/login.dart';
import 'package:katka/auth.dart';
import 'package:katka/rootPage.dart';

void main() async => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) =>Profile(),
      // },
      home: RootPage(auth: new Auth()),
    );
  }
}

