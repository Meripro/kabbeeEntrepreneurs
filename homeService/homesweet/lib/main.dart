import 'package:flutter/material.dart';
import 'package:homesweet/pages/client.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/client',
      routes: {
        // '/': (context) => Loading(),
        //  '/home': (context) => Home(),
        '/client': (context) => Client(),
      },
    ));
