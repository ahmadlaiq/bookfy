import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:getwidget/getwidget.dart';

class KebijakanPrivasi extends StatefulWidget {

  @override
  _KebijakanPrivasiState createState() => _KebijakanPrivasiState();
}

class _KebijakanPrivasiState extends State<KebijakanPrivasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Kebijakan & Privasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child: LottieBuilder.network('https://assets10.lottiefiles.com/private_files/lf30_p8LAfk.json'),
                ),
              ),
                Text('Prinsip Privasi dan Keamanan Kami', 
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
          child: Text('Kami membuat privasi yang berlaku bagi semua pengguna. Tanggung jawab ini hadir seiring dengan dibuatkannya produk dan layanan yang gratis dan dapat diakes oleh semua pengguna. Hal ini sangat penting karena kemajuan teknologi dan kebutuhan privasi terus berkembang. Kami ingin prinsip ini memandu produk, proses, dan tim kami dalam menjaga data pengguna tetap bersifat pribadi, aman dan terlindungi.', 
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
          textAlign: TextAlign.justify,),
        ),
        GFAccordion(
    title: '1. Kami menghormati pengguna dan privasinya.',
    content: 'Kami yakin bahwa ide-ide ini tidak terpisahkan. Ide-ide tersebut mewakili satu keyakinan inti yang telah mempengaruhi semua produk yang kami buat sejak awal Aplikasi Bookfy, dan produk yang akan kami buat kedepannya. Saat pengguna menggunakan produk kami, mereka mempercayakan informasinya kepada kami, dan sudah menjadi tugas kami untuk menjaganya. Ini berarti kami selalu bijaksana terkait data yang kami gunakan, cara menggunakan, dan cara melindunginya.'
),
GFAccordion(
    title: '2. Kami menjelaskan data apa yang kami kumpulkan beserta alasannya.',
    content: 'Untuk membantu pengguna mengambil keputusan yang tepat terkait cara mereka menggunakan Aplikasi Bookfy, kami mempermudah pengguna untuk memahami tentang data apa yang kami kumpulkan, cara penggunaan, serta alasannya. Bersikap transparan berarti membuat informasi ini tersedia dan dapat dipahami.'
),
GFAccordion(
    title: '3. Kami tidak pernah menjual informasi pribadi pengguna kami kepada siapa pun.',
    content: 'Kami menggunakan data agar Aplikasi Bookfy seperti informasi data anda saat memasukkan link agar berjalan dengan baik. Kami juga menggunakan data untuk menanyangkan lebih banyak Data yang relevan. Meskipun aplikasi ini gratis, namun sangat perlu ditekankan bahwa informasi pribadi pengguna kami tidak dijual.'
),
GFAccordion(
    title: '4. Kami membuat teknologi keamanan terkuat dalam Aplikasi kami.',
    content: 'Menghormati privasi pengguna kami berarti melindungi data yang dipercayakan kepada kami. Agar semua Aplikasi dan layanan Bookfy tetap aman, kami membangun dan menggunakan salah satu infrastruktur kemanan paling canggih. Ini berarti kami terus memperkuat teknologi kemanan kami guna mendeteksi dan melindungi terhadap ancaman yang terus berkembang.'
),
          ],),),
      ),
    );
  }
}