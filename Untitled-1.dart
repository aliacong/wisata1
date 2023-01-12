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
      title: 'Sefry Syahrudin',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Sefry Syahrudin';
  final String location = 'Blora, Jawa Tengah';
  final String description =
      '''     Seorang anak lelaki yang sempat membuka hati dan ingin merasakan rasanya dicintai namun pada akkhirnya disakiti KAN TAI ANJING KON BANGSAT NGENTOD ASU GATEL COK JANCOK sorry kasar, namanya juga terluka wkwk  ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/topi.jpg',
              height: 250,
              width: 250,
              fit: BoxFit.fill,
            ),

            Container(
              height: 15,
            ),
            
            Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      this.title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      this.location,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    )
                  ],
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 15,
                ),
                
              ],
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Text(
                this.description,
                style: TextStyle(
                  fontSize: 18,
                ),
                softWrap: true,
              ),
            )
          ],
        ));
  }
}