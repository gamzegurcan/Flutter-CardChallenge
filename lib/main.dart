import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Okunacak Kitaplar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          backgroundColor: Colors.amberAccent,
        ),
        body: SafeArea(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://d2gg9evh47fn9z.cloudfront.net/800px_COLOURBOX33564034.jpg'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Gamze Gürcan",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 50.0,
                width: 250,
                child: Divider(
                  color: Colors.green[100],
                  height: 15,
                  thickness: 3,
                ),
              ),
              buildCard("Şeker Portakalı"),
              SizedBox(height: 5),
              buildCard("Don Kişot"),
              SizedBox(height: 5),
              buildCard("Suç ve Ceza"),
            ],
          ),
        ),
      ),
    );
  }

  Card buildCard(String name) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 2.0, horizontal: 25.0),
      child: Padding(
          padding: EdgeInsets.all(25.0),
          child: ListTile(
            leading: Icon(
              Icons.book,
              color: Colors.purple,
            ),
            title: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Source Sans Pro',
                fontSize: 20.0,
              ),
            ),
          )),
    );
  }
}
