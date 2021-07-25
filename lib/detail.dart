import 'package:flutter/material.dart';
import 'package:book/baca.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail E-book'),
        backgroundColor: Color(0xFF219653),
        elevation: 8,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
              child: Card(
                  elevation: 8,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Ink.image(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/4/4b/Sebuah-seni-untuk-bersikap-bodoh-amat.jpg'),
                          height: 180,
                          width: 120,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
              child: Text(
                "Sebuah Seni Untuk Bersikap Bodo Amat",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(
                "_____________________________",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Penulis : Mark Mason",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Kategori : Psikolog",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Tahun : 2015",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Tebal Buku : 246 Halaman",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 7, 0, 0),
              child: Text(
                "Deskripsi : Kunci dari seni pertama adalah masa bodoh terhadap segala halangan dan perjuangan dalam mencapai sesuatu yang kita inginkan. Seharusnya kita hadapi dan nikmati saja karena dalam mengejar suatu pencapaian, pasti ada saja rintangan yang muncul. Seni kedua, temukan hal-hal penting dan berarti untuk diprioritaskan sehingga kamu bisa lebih mudah untuk masa bodoh pada hal-hal sepele. Adapun seni ketiga mempertegas seni sebelumnya, yakni kita mulai dapat memilah mana yang lebih penting saat beranjak dewasa. Walaupun hal penting itu tampaknya sederhana, tetapi kita bisa tetap bahagia dengan kesederhanaan itu.",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
              child: SizedBox(
                height: 50,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Baca();
                        },
                      ),
                    );
                  },
                  color: Color(0xFF219653),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Text(
                    "Baca Buku",
                    style: TextStyle(color: Colors.white),
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
