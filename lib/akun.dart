import 'package:book/dark_mode.dart';
import 'package:book/kebijakanprivasi.dart';
import 'package:book/login.dart';
import 'package:book/tentang.dart';
import 'package:book/ubahprofil.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
          margin: EdgeInsets.all(0),
          child: ListView(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://goldenspikecompany.com/wp-content/uploads/2020/12/1280x720-brandeis-blue-solid-color-background.jpg"),
                        fit: BoxFit.cover)),
                child: Container(
                  width: double.infinity,
                  height: 180,
                  child: Container(
                    alignment: Alignment(0.0, 2.5),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(urlImage),
                      radius: 60.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return UbahProfil();
                          },
                        ),
                      );
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return KebijakanPrivasi();
                          },
                        ),
                      );
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Tentang();
                          },
                        ),
                      );
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DarkMode();
                          },
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                          child: Icon(Icons.mood),
                        ),
                        Expanded(
                            child: Text(
                          "Dark Mode",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 15),
                child: RaisedButton(
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () async {
                      await FirebaseAuth.instance.signOut();
                      setState(() {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Login();
                          },
                        ),
                      );                       
                                            });
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
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
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
