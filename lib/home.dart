import 'dart:async';

import 'package:flutter/material.dart';
import 'package:book/detail.dart';
//Import firebase_admob.dart
//import 'package:firebase_admob/firebase_admob.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 // BannerAd _bannerAd;
 // static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo();
 // BannerAd createBannerAdd() {
 //   return BannerAd(
  //      targetingInfo: targetingInfo,
   //     adUnitId: BannerAd.testAdUnitId,
   //     size: AdSize.smartBanner,
    //    listener: (MobileAdEvent event) {
     //     print('Banner Event: $event');
      //  });
  //}

  @override
  Widget build(BuildContext context) {
  //  Timer(Duration(seconds: 10), () {
  //    _bannerAd?.show();
  //  });
    return Scaffold(
        body: Container(
      margin: EdgeInsets.all(20),
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
              style: TextStyle(
                  fontSize: 23,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 5, 45, 0),
            child: Text(
              "Mau membaca buku apa hari ini?",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
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
                                  'https://ebooks.gramedia.com/ebook-covers/47957/image_highres/ID_FYW2019MTH06FYW.jpg'),
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Text('Detail'),
                              onPressed: () {
                                debugPrint('Berhasil Klik');
                              },
                            ),
                          ],
                        )
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
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
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Text('Detail'),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Detail();
                                    },
                                  ),
                                );
                              },
                            ),
                          ],
                        )
                      ])),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
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
                                  'https://imgv2-1-f.scribdassets.com/img/document/384431084/original/765c6e79a0/1617816279?v=1'),
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Text('Detail'),
                              onPressed: () {
                                debugPrint('Berhasil Klik');
                              },
                            ),
                          ],
                        )
                      ])),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
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
                                  'https://www.akubaca.com/wp-content/uploads/2017/01/Fihi_Ma_Fihi__Jalaluddin_Rumi__Jilid_Biasa_-600x856.jpg'),
                              height: 180,
                              width: 120,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        ButtonBar(
                          alignment: MainAxisAlignment.center,
                          children: [
                            FlatButton(
                              child: Text('Detail'),
                              onPressed: () {
                                debugPrint('Berhasil Klik');
                              },
                            ),
                          ],
                        )
                      ])),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }

  //@override
  //void initState() {
    //super.initState();
    //FirebaseAdMob.instance
      //  .initialize(appId: 'ca-app-pub-9841506883479519~1041793087');
    //_bannerAd = createBannerAdd()..load();
  //}

  //@override
  //void dispose() {
   // super.dispose();
  //}

}
