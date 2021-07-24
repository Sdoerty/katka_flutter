import 'package:flutter/material.dart';
import 'package:katka/pages/profile.dart';

void main() => runApp(MaterialApp(
  theme: ThemeData(primaryColor: Colors.blueGrey),
  initialRoute: '/',
  routes: {
    '/': (context) =>Profile(),
  },
));