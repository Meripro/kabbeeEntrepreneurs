import 'package:flutter/material.dart';
import 'package:homesweet/pages/client.dart';
import 'package:homesweet/pages/crousel.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/client',
      routes: {
        // '/': (context) => Loading(),
        //  '/home': (context) => Home(),
        '/client': (context) => Client(),
        '/crousel': (context) => Carousel(),
      },
    ));
