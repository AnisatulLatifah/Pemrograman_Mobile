import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

// 2.6.4 ListView
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Contoh ListView Widget"),
//         ),
//         body: ListView(
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.topLeft,
//               child: Text(
//                   "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.topLeft,
//               child: Text(
//                   "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 250.0,
//               width: 250.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.topLeft,
//               child: Text(
//                   "ListView widget digunanakan untuk menampilkan data dalam bentuk list dan jika datanya melebihi dari render box maka halaman tersebut dapat di scroll.",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 150.0,
//               width: 150.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//2.6.5 GridView
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Contoh GridView Widget"),
//         ),
//         body: GridView.count(
//           crossAxisCount: 2,
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.center,
//               child: Text("1",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.center,
//               child: Text("2",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.center,
//               child: Text("3",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.blueGrey,
//               alignment: Alignment.center,
//               child: Text("4",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.cyan[800],
//               alignment: Alignment.center,
//               child: Text("5",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//             Container(
//               color: Colors.yellow[800],
//               alignment: Alignment.center,
//               child: Text("6",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 200.0,
//               width: 200.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Tugas Praktikum
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('PesanTiket.Com'),
          backgroundColor: Colors.blue[400],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text('PROMO TERBARU',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold)),
                  height: 55.0,
                  width: 205.9,
                ),
                Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  child: Text('DAFTAR TRENDING',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold)),
                  height: 55.0,
                  width: 205.5,
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  child: Image(
                    image: AssetImage('assets/img/gambar1.jpeg'),
                    fit: BoxFit.fitWidth,
                  ),
                  margin: EdgeInsets.only(left: 1, right: 1),
                ),
                Container(
                  margin: EdgeInsets.only(left: 1, right: 1),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 144, 191, 229),
                        width: 2),
                  ),
                  height: 270.0,
                  width: 410.0,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(bottom: 14),
                  child: Text(
                    "PesanTiket.Com",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            // memakai kolom biasa
            Container(
              height: 50.0,
              width: 410,
              padding: EdgeInsets.all(18),
              alignment: Alignment.topCenter,
              color: Colors.blue[200],
              child: Text("Silahkan Pesan Tiket di Bawah Ini",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold)),
            ),
// stack berita 1
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 144, 191, 229),
                      width: 2,
                    ),
                  ),
                  height: 150,
                  width: 410,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  child: Text("Tiket Pesawat",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 144, 191, 229),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 172.0,
                        height: 115.0,
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/img/gambar2.jpeg'),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 110.0,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 12.7),
                        child: Text(
                          "Nikmati promo yang berlimpah untuk pemesanan tiket lokal hingga 30 Desember 2023!!",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
//stack berita 2
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 144, 191, 229),
                      width: 2,
                    ),
                  ),
                  height: 150,
                  width: 410,
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.only(left: 10, bottom: 5),
                  child: Text("Tiket Hotel",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, left: 2, right: 2),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 144, 191, 229),
                      width: 2,
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 172.0,
                        height: 115.0,
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage('assets/img/gambar3.png'),
                        ),
                      ),
                      Container(
                        width: 200.0,
                        height: 110.0,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 12.7),
                        child: Text(
                          "Nikmati potongan harga hingga 50% untuk penginapan, hingga 29 November 2023!!",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
