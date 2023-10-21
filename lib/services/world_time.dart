import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'dart:convert';

class WorldTime {
  String location; //Locationname for UI
  String capital;
  String flag; // URL to an asset flag icon
  String url; // Location url
  String time = ''; //Time in that location
  late String date;
  late int dayOfWeek;
  late bool isDaytime;
  List week = ['Sun, ', 'Mon, ', 'Tue, ', 'Wed, ', 'Thu, ', 'Fri, ', 'Sat, '];

  WorldTime(
      {required this.location,
      required this.capital,
      required this.flag,
      required this.url});

  Future<void> getTime() async {
    try {
      // Make request
      Response response =
          await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);
      //!print(data);

      // Get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(0, 3);
      dayOfWeek = data['day_of_week'];
      //!print(week[dayOfWeek]);
      //!print(datetime);
      //!print(offset);

      // Creating DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //!print(now);

      // Set time and date prperty
      isDaytime = now.hour > 5 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
      date = week[dayOfWeek] + DateFormat('dd-MM-yyyy').format(now);
      //!print(isDaytime);
      //!print(time);
      //!print(date);
    } catch (e) {
      print(e);
      isDaytime = true;
      time = '';
      date = '';
    }
  }
}
