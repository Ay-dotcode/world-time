import 'package:flutter/material.dart';
import 'package:word_time/pages/home.dart';
import 'package:word_time/pages/loading.dart';
import 'package:word_time/pages/location.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.blue[900],
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Loading(),
          '/home': (context) => Home(),
          '/location': (context) => Location(),
        },
      ),
    );
