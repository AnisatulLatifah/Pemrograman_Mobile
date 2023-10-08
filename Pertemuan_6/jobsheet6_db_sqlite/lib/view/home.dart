import 'package:flutter/material.dart';
import 'package:jobsheet6_db_sqlite/dbhelper.dart';
import 'package:jobsheet6_db_sqlite/view/entryForm.dart';
import 'package:jobsheet6_db_sqlite/model/item.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList = [];

  final warna_1 = Color(0xff1b5e20);
  final warna_2 = Color(0xff1b5e20);
  final warna_3 = Color(0xffe8f5e9);
  final warna_4 = Color(0xff9ccc65);

  @override
  Widget build(BuildContext context) {
    if (itemList.isEmpty) {
      updateListView();
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Anisa's Grocery Store"),
        backgroundColor: warna_1,
        actions: [
          IconButton(
            icon: Icon(Icons.star), // Ikon bintang
            onPressed: () {
              // Aksi yang dijalankan saat ikon bintang ditekan
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: createListView(),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: warna_1,
                  onPrimary: warna_3,
                  minimumSize: Size(double.infinity, 50.0),
                ),
                child: Text(
                  "Add Item",
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () async {
                  var item = await navigateToEntryForm(context, true, null);
                  if (item != null) {
                    int result = await dbHelper.insert(item);
                    if (result > 0) {
                      updateListView();
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Item?> navigateToEntryForm(
      BuildContext context, bool isAdding, Item? item) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return EntryForm(item: item, isAdding: isAdding);
        },
      ),
    );
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context)
        .textTheme
        .headline4!; // Menambahkan headline4 untuk membuat teks lebih besar
    double cardPadding = 16.0; // Mengubah padding kartu
    double leadingIconSize = 36.0; // Mengubah ukuran ikon di leading
    double trailingIconSize = 36.0; // Mengubah ukuran ikon di trailing

    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(
              cardPadding), // Menggunakan padding untuk memisahkan kartu
          child: Card(
            color: warna_4,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellowAccent[200],
                child: Icon(
                  Icons.local_florist,
                  color: Colors.lightGreen[800],
                  size: leadingIconSize, // Mengatur ukuran ikon leading
                ),
              ),
              title: Text(
                this.itemList[index].name,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                  color: Colors
                      .green[910], // Mengatur warna teks menjadi green[900]
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Text(
                  //   'Item Code: ${this.itemList[index].code}',
                  //   style:
                  //       TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  // ),
                  Text(
                    'Stock: ${this.itemList[index].stock}',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                  Text(
                    'Price: ${this.itemList[index].price}',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
                  ),
                ],
              ),
              trailing: GestureDetector(
                child: Icon(Icons.delete,
                    size: trailingIconSize), // Mengatur ukuran ikon trailing
                onTap: () async {
                  int result = await dbHelper.delete(this.itemList[index].id!);
                  if (result > 0) {
                    updateListView();
                  }
                },
              ),
              onTap: () async {
                var item = await navigateToEntryForm(
                    context, false, this.itemList[index]);
                if (item != null) {
                  int result = await dbHelper.update(item);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
          ),
        );
      },
    );
  }

  void updateListView() async {
    final items = await dbHelper.getItemList();
    setState(() {
      itemList = items;
      count = items.length;
    });
  }
}
