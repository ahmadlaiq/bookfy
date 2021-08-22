import 'package:book/ItemCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference books = firestore.collection('books');
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(15),
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                prefixIcon: Icon(Icons.search_rounded),
                labelText: 'Telusuri...',
                border: OutlineInputBorder(),
              ),
              textInputAction: TextInputAction.done,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
            child: Text(
              "Halo, Ahmad Khoirudin",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 5, 45, 30),
            child: Text(
              "Mau membaca buku apa hari ini?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
          ),
          StreamBuilder<QuerySnapshot>(
              stream: books.snapshots(),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data.docs.map((e) => ItemCard(e['judul'], e['penulis'], e['tahun'],e['tebal'],e['cover'])).toList(),
                  );
                } else {
                  return Text('Loading');
                }
              }),
          // Card(
          //   margin: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          //   child: InkWell(
          //     onTap: () {},
          //     child: Row(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         // Thumbnail
          //         Container(
          //           width: 100,
          //           height: 120,
          //           child: ClipRRect(
          //             borderRadius: BorderRadius.all(Radius.circular(5)),
          //             child: Image.network(
          //               'https://ebooks.gramedia.com/ebook-covers/47957/image_highres/ID_FYW2019MTH06FYW.jpg',
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width: 16,
          //         ),
          //         //Column
          //         Container(
          //           margin: EdgeInsets.symmetric(vertical: 10),
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             mainAxisAlignment: MainAxisAlignment.start,
          //             children: [
          //               //judul
          //               Container(
          //                 width: MediaQuery.of(context).size.width * 0.5,
          //                 padding: const EdgeInsets.only(bottom: 5),
          //                 child: Text(
          //                   'Buku Dada dan Lala',
          //                   style: TextStyle(
          //                       fontSize: 18, fontWeight: FontWeight.bold),
          //                   // softWrap: true,
          //                   overflow: TextOverflow.ellipsis,
          //                   maxLines: 2,
          //                   // overflow: TextOverflow.ellipsis,
          //                 ),
          //               ),
          //               SizedBox(height: 5),
          //               //status
          //               Text(
          //                 "Penulis: Ahmad Fuadi",
          //                 style: TextStyle(color: Colors.red),
          //               ),
          //               //genre
          //               SizedBox(
          //                 height: 4,
          //               ),
          //               Text(
          //                 "Tahun: 2015",
          //                 style: TextStyle(color: Colors.red),
          //               ),
          //               SizedBox(
          //                 height: 4,
          //               ),
          //               Text(
          //                 "Tebal: 200",
          //                 style: TextStyle(color: Colors.red),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.fromLTRB(80, 4, 0, 0),
          //                 child: SizedBox(
          //                   height: 20,
          //                   child: RaisedButton(
          //                     padding: EdgeInsets.symmetric(
          //                         vertical: 2, horizontal: 3),
          //                     onPressed: () => Navigator.push(
          //                       context,
          //                       MaterialPageRoute(
          //                           builder: (context) => PDFScreen(pathPDF)),
          //                     ),
          //                     color: Color(0xFFF5F6F9),
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius:
          //                           BorderRadius.all(Radius.circular(5)),
          //                     ),
          //                     // icon: FaIcon(FontAwesomeIcons.google),
          //                     child: Text(
          //                       "Baca",
          //                       style: TextStyle(
          //                           color: Color(0xFF4285F4),
          //                           fontWeight: FontWeight.bold),
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    ));
  }
}


