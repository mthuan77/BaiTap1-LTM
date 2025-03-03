import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(icon: Icon(Icons.edit, color: Colors.green), onPressed: () {  },)
        ],
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://i.pinimg.com/736x/e7/c1/6e/e7c16e5f4848b340f57e46559a6d2337.jpg'), // Replace with your image URL
          ),
          SizedBox(height: 16),
          Text(
            'Johan Smith',
            style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'California, USA',
            style: TextStyle(
          fontSize: 16,
          color: Colors.grey,
            ),
          ),
        ],
          ),
        ),
      ),
        );
      }
    }
