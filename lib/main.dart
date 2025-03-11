// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage()
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {
              },
            ),
            Text(
              'Weather App',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              icon: Icon(Icons.add_box, color: Colors.black),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
    body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Yogyakarta', style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Today', style: TextStyle(fontSize: 24, color: Colors.grey, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('28°C', style: TextStyle(fontSize: 124, color: Colors.blue, fontWeight: FontWeight.w400)),
            SizedBox(height: 10),
            Divider(
             color: Colors.grey, 
             thickness: 1,     
             indent: 40,         
             endIndent: 40,),
             SizedBox(height: 10),
            Text('Sunny', style: TextStyle(fontSize: 24, color: Colors.grey)),
             SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Icon(Icons.ac_unit, color: Colors.blue, size: 24), 
               SizedBox(width: 4), 
              Text('5 km/h', style: TextStyle(fontSize: 20, color: Colors.blue),
        ),
      ],
    ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Next 7 days', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      weatherInfo('Now', '28°C', '10 km/h', '0%'),
                      weatherInfo('17.00', '28°C', '10 km/h', '0%'),
                      weatherInfo('20.00', '28°C', '10 km/h', '0%'),
                      weatherInfo('23.00', '28°C', '10 km/h', '0%'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text('Developed by: latifusmulfauzi'),
          ],
        ),
      ),
    );
    }
    Widget weatherInfo(String time, String temp, String wind, String humidity) {
    return Column(
      children: [
      Text(time, style: TextStyle(fontSize: 20,)),
      SizedBox(height: 12), 
      Icon(Icons.ac_unit, color: Colors.blue, size: 28,),
      Text(temp, style: TextStyle(color: Colors.blue, fontSize: 20,)),
      SizedBox(height: 12),
      Icon(Icons.wind_power_sharp, color: Colors.pink, size: 28,),
      Text(wind, style: TextStyle(color: Colors.pink,fontSize: 20), ),
      SizedBox(height: 12),
      Icon(Icons.umbrella_sharp, size: 28,),
      Text(humidity, style: TextStyle(fontSize: 20),),
    ],
    );
  }
} 