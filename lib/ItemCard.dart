import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';

class ItemCard extends StatefulWidget {  

final String judul;
final penulis;
final tebal;
final tahun;
final cover;

  @override
  _ItemCard createState() => _ItemCard(judul, penulis, tebal, tahun, cover);
  
  ItemCard(this.judul, this.penulis, this.tebal, this.tahun, this.cover,);
}

class _ItemCard extends State<ItemCard> {

final String judul;
final String penulis;
final tebal;
final tahun;
final cover;

_ItemCard(this.judul, this.penulis, this.tebal, this.tahun, this.cover,);

  String pathPDF = "";
  String filePDF = "https://www.byriza.com/demo/file-PDF.pdf";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl(filePDF).then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future createFileOfPdfUrl(filePDF) async {
    final url = filePDF;
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }
      

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail
            Container(
              width: 100,
              height: 120,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                child: Image.network(
                  "$cover",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            //Column
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //judul
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      judul,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      // softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      // overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 5),
                  //status
                  Text(
                    "Penulis: " "$penulis",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  //genre
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Tahun: " "$tahun",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Tebal: " "$tebal lembar",
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 4, 0, 0),
                    child: SizedBox(
                      height: 20,
                      child: RaisedButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 3),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PDFScreen(pathPDF)),
                        ),
                        color: Colors.greenAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        // icon: FaIcon(FontAwesomeIcons.google),
                        child: Text(
                          "Baca",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PDFScreen extends StatelessWidget {
  String pathPDF = "";
  PDFScreen(this.pathPDF);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      appBar: AppBar(
        title: Text("Baca Buku"),
      ),
      path: pathPDF,
    );
  }
}

