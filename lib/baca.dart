import 'package:flutter/material.dart';
//Import ad_manager.dart

class Baca extends StatefulWidget {

  @override
  _BacaState createState() => _BacaState();
}

class _BacaState extends State<Baca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baca E-book'),
        backgroundColor: Color(0xFF219653),
        elevation: 8,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Ini Isi E-Book",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Deskripsi : Kunci dari seni pertama adalah masa bodoh terhadap segala halangan dan perjuangan dalam mencapai sesuatu yang kita inginkan. Seharusnya kita hadapi dan nikmati saja karena dalam mengejar suatu pencapaian, pasti ada saja rintangan yang muncul. Seni kedua, temukan hal-hal penting dan berarti untuk diprioritaskan sehingga kamu bisa lebih mudah untuk masa bodoh pada hal-hal sepele. Adapun seni ketiga mempertegas seni sebelumnya, yakni kita mulai dapat memilah mana yang lebih penting saat beranjak dewasa. Walaupun hal penting itu tampaknya sederhana, tetapi kita bisa tetap bahagia dengan kesederhanaan itu. Deskripsi : Kunci dari seni pertama adalah masa bodoh terhadap segala halangan dan perjuangan dalam mencapai sesuatu yang kita inginkan. Seharusnya kita hadapi dan nikmati saja karena dalam mengejar suatu pencapaian, pasti ada saja rintangan yang muncul. Seni kedua, temukan hal-hal penting dan berarti untuk diprioritaskan sehingga kamu bisa lebih mudah untuk masa bodoh pada hal-hal sepele. Adapun seni ketiga mempertegas seni sebelumnya, yakni kita mulai dapat memilah mana yang lebih penting saat beranjak dewasa. Walaupun hal penting itu tampaknya sederhana, tetapi kita bisa tetap bahagia dengan kesederhanaan itu.",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}