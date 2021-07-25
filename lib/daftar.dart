import 'package:flutter/material.dart';
import 'package:book/navbar.dart';

class Daftar extends StatefulWidget {
  @override
  _DaftarState createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Text(
              "Daftar",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text(
              "BookFy",
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
            child: Text(
              "Gratis !",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                labelText: 'Nama Lengkap',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                labelText: 'Ketik E-mail',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                labelText: 'Ketik Password',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Row(
            children: <Widget>[
              Checkbox(
                value: value,
                onChanged: (value) => setState(() => this.value = value),
              ),
              Text(
                "Saya menyetujui kebijakan & privasi Bookfy.",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ],
          ),
          Padding(
                padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
                child: SizedBox(
                  height: 50,
                  child: RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Navbar();
                          },
                        ),
                      );
                    },
                    color: Color(0xFF219653),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Text(
                      "Daftar",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
        ],
      ),
    ));
  }
}
