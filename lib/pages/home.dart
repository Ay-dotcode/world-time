import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>;
    //print(data);

    // set background
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jpg';
    Color? bgColor = data['isDaytime'] ? Colors.blue[400] : Colors.indigo[700];

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 170),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data = {
                        'time': result['time'],
                        'date': result['date'],
                        'dayOfWeek': result['dayOfWeek'],
                        'location': result['location'],
                        'capital': result['capital'],
                        'country': result['country'],
                        'isDaytime': result['isDaytime'],
                        'flag': result['flag'],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    "Edit location",
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20.0),
                  ],
                ),
                Wrap(
                  spacing: 2,
                  alignment: WrapAlignment.center,
                  children: [
                    Text(
                      data['capital'],
                      style: const TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 3.0,
                          color: Colors.white),
                    ),
                    Text(
                      ', ',
                      style: const TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 3.0,
                          color: Colors.white),
                    ),
                    Text(
                      data['location'],
                      style: const TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                          color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    data['time'] != ''
                        ? Text(
                            data['time'],
                            style: TextStyle(
                              fontSize: 66.0,
                              color: Colors.white,
                            ),
                          )
                        : Text(
                            'No Connection',
                            style: TextStyle(
                              fontSize: 50.0,
                              color: Colors.white,
                            ),
                          ),
                    Text(
                      data['date'],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
