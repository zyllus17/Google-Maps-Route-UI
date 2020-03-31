import 'package:flutter/material.dart';
import 'package:mapsui/timeline.dart';

class Constants {
  static Color lightPrimary = Color(0xfff2f3f7);
  static Color lightAccent = Colors.blue;
  static Color lightBG = Color(0xfff2f3f7);

  static ThemeData lightTheme = ThemeData(
    backgroundColor: lightBG,
    primaryColor: lightPrimary,
    accentColor: lightAccent,
    cursorColor: lightAccent,
    scaffoldBackgroundColor: lightBG,
  );
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme,
      home: MapContent(),
    );
  }
}

///Change Text, Icon & Image accordingly to get desired result

class MapContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    ///AppBar Text
                    Text(
                      "Howrah Station ➞ Aliah University",
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      height: 220.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          ///Image address
                          image: AssetImage("assets/images/ballytoaliah.png"),
                          fit: BoxFit.fill,
                        ),
                        border: Border.all(width: 0.8),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Timeline(
                  ///Both data needs to be provided every time. If you don't want to add detail then use single colons('')
                  children: <Widget>[
                    MapTextData(
                        mainAddress: 'Bally Station',
                        detailAddress: 'Howrah, West Bengal'),
                    MapTextData(
                        mainAddress: 'Walk to Bally Halt Bus Stop',
                        detailAddress: 'Take the stairs to get on the Flyover'),
                    MapTextData(
                        mainAddress: 'Bally ➞ Karunamoyee',
                        detailAddress: 'Get on this bus'),
                    MapTextData(
                        mainAddress: 'Aliah University',
                        detailAddress: 'Newtown, Kolkata'),
                  ],
                  indicators: <Widget>[
                    ///Add Icons here in ascending order
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_walk),
                    Icon(Icons.directions_bus),
                    Icon(Icons.account_balance),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
