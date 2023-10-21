import 'package:flutter/material.dart';
import 'package:word_time/others/load_screen.dart';
import 'package:word_time/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupTime() async {
    WorldTime instance = WorldTime(
      location: 'Cyprus',
      capital: 'Nicosia',
      flag: 'cyprus.png',
      url: 'Asia/Nicosia',
    );
    await instance.getTime();
    //print(instance.time);

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'capital': instance.capital,
      'flag': instance.flag,
      'time': instance.time,
      'date': instance.date,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return load();
  }
}
