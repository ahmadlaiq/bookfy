import 'package:flutter/material.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Tambah extends StatefulWidget {
  @override
  _TambahState createState() => _TambahState();
}

class _TambahState extends State<Tambah> {
  //Firebase Cloud Messaging
  // FirebaseMessaging fm = FirebaseMessaging();

  // _TambahState() {
  //   fm.configure();
  // }

  final TextEditingController judulcontroller = TextEditingController();
  final TextEditingController penuliscontroller = TextEditingController();
  final TextEditingController tebalcontroller = TextEditingController();
  final TextEditingController tahuncontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference books = firestore.collection('books');
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                "Judul Buku",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextField(
                controller: judulcontroller,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: 'Ketik judul buku',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Penulis",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextField(
                controller: penuliscontroller,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: 'Ketik nama penulis',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Tahun",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextField(
                controller: tahuncontroller,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: 'Ketik tahun',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Tebal Buku",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextField(
                controller: tebalcontroller,
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: 'Ketik tebal buku',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Upload Cover",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: 'Ketik link cover',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Text(
                "Upload E-book",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.black12,
                  filled: true,
                  labelText: 'Ketik link e-book',
                  border: OutlineInputBorder(),
                ),
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
              child: SizedBox(
                height: 50,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  onPressed: () {
                    books.add({
                      'judul': judulcontroller.text,
                      'penulis': penuliscontroller.text,
                      'tahun': int.tryParse(tahuncontroller.text) ?? 0,
                      'tebal': int.tryParse(tebalcontroller.text) ?? 0,
                    });

                    judulcontroller.text = '';
                    penuliscontroller.text = '';
                    tahuncontroller.text = '';
                    tebalcontroller.text = '';
                  },
                  color: Color(0xFF0275d8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  // icon: FaIcon(FontAwesomeIcons.google),
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
