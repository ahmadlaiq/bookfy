import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Tentang'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
                'https://i.imgur.com/XfNqhsa.png',
        ),
        Text('V-1.0.0', 
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,)
          ],
        )
      ),
    );
  }
}