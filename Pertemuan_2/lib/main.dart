import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// 2.5.1 Text Widget
  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Text(
  //       'This is Text Widget',
  //     ),
  //   );
  // }

// 2.5.2 Image Widget
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Image(
//         image: NetworkImage(
//             'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//       ),
//     );
//   }
// }

// 2.5.3 Material Design dan iOS Cupertino
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Container(
//         margin: EdgeInsets.only(top: 30),
//         color: Colors.white,
//         child: Column(
//           children: <Widget>[
//             AppBar(title: Text('Contoh Cupertino')),
//             CupertinoButton(
//               child: Text('Contoh Button'),
//               onPressed: () {},
//             ),
//             CupertinoActivityIndicator(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 2.5.4 Button
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Icon(Icons.thumb_up),
//           backgroundColor: Colors.pink,
//         ),
//       ),
//     );
//   }
// }

// 2.5.5 Scaffold
//   int _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Sample Code'),
//         ),
//         body: Center(
//           child: Text('You have pressed the button $_count times.'),
//         ),
//         bottomNavigationBar: BottomAppBar(
//           child: Container(
//             height: 50.0,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () => 0,
//           tooltip: 'Increment Counter',
//           child: Icon(Icons.add),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       ),
//     );
//   }
// }

// 2.5.6 Dialog
//   int _count = 0;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: MyLayout(),
//       ),
//     );
//   }
// }

// class MyLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ElevatedButton(
//         child: Text('Show alert'),
//         onPressed: () {
//           showAlertDialog(context);
//         },
//       ),
//     );
//   }
// }

// showAlertDialog(BuildContext context) {
// // set up the button
//   Widget okButton = TextButton(
//     child: Text("OK"),
//     onPressed: () {},
//   );

// // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("My title"),
//     content: Text("This is my message."),
//     actions: [
//       okButton,
//     ],
//   );

// // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

// 2.5.7 Input dan Selection Widget
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh TextField")),
//         body: TextField(
//           obscureText: false,
//           decoration: InputDecoration(
//             border: OutlineInputBorder(),
//             labelText: 'Nama',
//           ),
//         ),
//       ),
//     );
//   }
// }

// 2.5.8 Date and Time Pickers
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Contoh Date Picker',
//       home: MyHomePage(title: 'Contoh Date Picker'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
// // Variable/State untuk mengambil tanggal
//   DateTime selectedDate = DateTime.now();
// // Initial SelectDate FLutter
//   Future<Null> _selectDate(BuildContext context) async {
// // Initial DateTime FIinal Picked
//     final DateTime picked = await showDatePicker(
//         context: context,
//         initialDate: selectedDate,
//         firstDate: DateTime(2015, 8),
//         lastDate: DateTime(2101));
//     if (picked != null && picked != selectedDate)
//       setState(() {
//         selectedDate = picked;
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text("${selectedDate.toLocal()}".split(' ')[0]),
//             SizedBox(
//               height: 20.0,
//             ),
//             RaisedButton(
//               onPressed: () => {
//                 _selectDate(context),
//                 print(selectedDate.day + selectedDate.month + selectedDate.year)
//               },
//               child: Text('Pilih Tanggal'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 2.6 Build in Layout Widget
// 2.6.1 Container
// A. Property Child
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Button")),
//         body: Container(
//           child: ElevatedButton(
//             onPressed: () {},
//             style: ElevatedButton.styleFrom(
//               primary: Colors.red[900],
//               onPrimary: Colors.white,
//             ),
//             child: Text(
//               "Button",
//               style: TextStyle(fontSize: 20),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// B. Property Alignment
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Aligment")),
//           body: Container(
//               alignment: Alignment.bottomCenter,
//               child: Text(
//                 'Semangat Belajar',
//                 style: TextStyle(
//                   fontSize: 20,
//                 ),
//               ))),
//     );
//   }
// }

// C. Property Color
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Color")),
//           body: Container(
//               margin: EdgeInsets.all(50),
//               height: 200,
//               width: 200,
//               alignment: Alignment.center,
//               color: Colors.amber[900],
//               child: Text(
//                 'Semangat Belajar',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ))),
//     );
//   }
// }

// D. Property Height dan Width
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Height dan Width")),
//           body: Container(
//               margin: EdgeInsets.all(50),
//               height: 200,
//               width: 200,
//               alignment: Alignment.center,
//               color: Colors.blueGrey,
//               child: Text(
//                 'Semangat Belajar',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ))),
//     );
//   }
// }

// E. Property Margin
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Margin")),
//           body: Container(
//               margin: EdgeInsets.all(50),
//               height: 200,
//               width: 200,
//               alignment: Alignment.topLeft,
//               color: Colors.blueGrey,
//               child: Text(
//                 'Semangat Belajar Flutter',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ))),
//     );
//   }
// }

// F. Property Padding
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Padding")),
//           body: Container(
//               padding: EdgeInsets.only(left: 20),
//               margin: EdgeInsets.all(20),
//               height: 200,
//               width: 200,
//               alignment: Alignment.topLeft,
//               color: Colors.blueGrey,
//               child: Text(
//                 'Ayo Belajar Flutter',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ))),
//     );
//   }
// }

// G. Property Transform
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Transform")),
//           body: Container(
//             decoration: BoxDecoration(
//               image: const DecorationImage(
//                 image: NetworkImage(
//                     'https://pixnio.com/free-images/2017/03/07/2017-03-07-10-59-39-900x600.jpg'),
//                 fit: BoxFit.fitWidth,
//               ),
//               border: Border.all(
//                 color: Colors.black,
//                 width: 8,
//               ),
//             ),
//             height: 200,
//             width: 300,
//             margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 30),
//             transform: Matrix4.rotationZ(-0.1),
//           )),
//     );
//   }
// }

//2.5.8 Date and Time Pickers
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Date Picker',
      home: MyHomePage(title: 'Contoh Date Picker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// Variable/State untuk mengambil tanggal
  DateTime selectedDate = DateTime.now();
// Initial SelectDate FLutter
  Future<Null> _selectDate(BuildContext context) async {
// Initial DateTime FIinal Picked
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text("${selectedDate.toLocal()}".split(' ')[0]),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () => {
                _selectDate(context),
                print(selectedDate.day + selectedDate.month + selectedDate.year)
              },
              child: Text('Pilih Tanggal'),
            ),
          ],
        ),
      ),
    );
  }
}

// H. Property Decoration
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Contoh Configuration")),
//           body: Container(
//               decoration: BoxDecoration(
//                 color: const Color(0xff7c94b6),
//                 image: const DecorationImage(
//                   image: NetworkImage(
//                       'https://pixnio.com/free-images/2018/12/02/2018-12-02-19-17-12.jpg'),
//                   fit: BoxFit.fitWidth,
//                 ),
//                 border: Border.all(
//                   color: Colors.black,
//                   width: 8,
//                 ),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               height: 200,
//               width: 300,
//               margin: EdgeInsets.all(20))),
//     );
//   }
// }

// 2.6.2 Row dan Column
// 2.6.2. A. Column Widget
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Column Widget")),
//         body: Column(
//           children: [
//             Container(
//               color: Colors.purpleAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.greenAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.orangeAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 2.6.2 B. Row Widget
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text("Contoh Row Widget")),
//         body: Row(
//           children: [
//             Container(
//               color: Colors.purpleAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.greenAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//             Container(
//               color: Colors.orangeAccent,
//               child: FlutterLogo(
//                 size: 90.0,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// 2.6.3 Stack
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Contoh Stack Widget"),
//         ),
//         body: Stack(
//           children: <Widget>[
//             Container(
//               color: Colors.green,
//               alignment: Alignment.bottomCenter,
//               child: Text("Satu",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//             ),
//             Container(
//               color: Colors.red,
//               alignment: Alignment.bottomCenter,
//               child: Text("Dua",
//                   style: TextStyle(fontSize: 30, color: Colors.white)),
//               height: 400.0,
//               width: 300.0,
//             ),
//             Container(
//               color: Colors.deepPurple,
//               alignment: Alignment.bottomCenter,
//               child: Text("Tiga",
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


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
