import 'package:flutter/material.dart';
import 'package:word_time/others/load_screen.dart';
import 'package:word_time/others/location_list.dart';
import 'package:word_time/services/world_time.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool waiting = true;
  List results = [];
  final _textController = TextEditingController();

  void updateTime(index) async {
    setState(() {
      waiting = false;
    });
    WorldTime instance = results[index];
    await instance.getTime();

    //Navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'capital': instance.capital,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime,
      'date': instance.date,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.indigo[900],
        title: const Text("Choose a Location"),
        centerTitle: true,
      ),
      body: waiting
          ? Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 1,
                horizontal: 10.0,
              ),
              child: Column(
                children: [
                  searchBar(),
                  LocationsList(),
                ],
              ),
            )
          : load(),
    );
  }

  Padding searchBar() {
    return () {
      results.isEmpty ? results.addAll(locations) : null;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: TextField(
          controller: _textController,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search Location',
            hintStyle: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
            prefixIcon: Icon(Icons.search),
            prefixIconColor: Colors.white,
            suffixIconColor: Colors.white,
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                setState(() {
                  _textController.clear();
                  results.clear();
                });
              },
            ),
          ),
          onChanged: (value) {
            results.clear();
            for (var place in locations) {
              if (place.capital.toLowerCase().contains(value.toLowerCase()) ||
                  place.location.toLowerCase().contains(value.toLowerCase())) {
                setState(() {
                  results.add(place);
                });
              }
            }
          },
        ),
      );
    }();
  }

  Expanded LocationsList() {
    return Expanded(
      child: ListView.builder(
        itemCount: results.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.grey[100],
            child: ListTile(
              title: Text(results[index].capital),
              subtitle: Text(results[index].location),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/${results[index].flag}'),
              ),
              onTap: () {
                updateTime(index);
              },
            ),
          );
        },
      ),
    );
  }
}
