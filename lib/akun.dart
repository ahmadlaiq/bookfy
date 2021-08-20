import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  @override
  _AkunState createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    final urlImage =
        'https://st4.depositphotos.com/1288156/41244/v/380/depositphotos_412440590-stock-illustration-salvador-dali-style-face-mask.jpg';
    return Scaffold(
      body: Container(
          margin: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(urlImage),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFFF5F6F9),
                    onPressed: () {
                      debugPrint('Berhasil Klik');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.person_rounded),
                        ),
                        Expanded(
                            child: Text(
                          "Data Diri",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFFF5F6F9),
                    onPressed: () {
                      debugPrint('Berhasil Klik');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.lock_rounded),
                        ),
                        Expanded(
                            child: Text(
                          "Kebijakan & Privasi",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFFF5F6F9),
                    onPressed: () {
                      debugPrint('Berhasil Klik');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.announcement_rounded),
                        ),
                        Expanded(
                            child: Text(
                          "Tentang",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFFF5F6F9),
                    onPressed: () {
                      debugPrint('Berhasil Klik');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.star_rounded),
                        ),
                        Expanded(
                            child: Text(
                          "Review Aplikasi",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    color: Color(0xFFF5F6F9),
                    onPressed: () {
                      debugPrint('Berhasil Klik');
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.logout),
                        ),
                        Expanded(
                            child: Text(
                          "Keluar",
                          style: Theme.of(context).textTheme.bodyText1,
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
              
              
            ],
          )),
    );
  }
}
