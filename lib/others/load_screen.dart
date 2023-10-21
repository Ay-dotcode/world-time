import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget load() {
  return Scaffold(
    backgroundColor: Colors.blue[900],
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          ),
          Text('loading...')
        ],
      ),
    ),
  );
}
