import 'package:flutter/material.dart';
import 'package:jobsheet6_db_sqlite/model/item.dart';

class EntryForm extends StatefulWidget {
  final Item? item;
  final bool isAdding;

  EntryForm({required this.item, required this.isAdding});

  @override
  EntryFormState createState() => EntryFormState(this.item, this.isAdding);
}

class EntryFormState extends State<EntryForm> {
  Item? item;
  bool isAdding;

  EntryFormState(this.item, this.isAdding);

  TextEditingController nameController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  TextEditingController stockController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  final warna_1 = Color(0xff1b5e20);
  final warna_2 = Color(0xff1b5e20);
  final warna_3 = Color(0xffe8f5e9);

  @override
  void initState() {
    super.initState();
    if (!isAdding && item != null) {
      nameController.text = item!.name;
      stockController.text = item!.stock.toString();
      priceController.text = item!.price.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isAdding ? 'Add Item' : 'Edit Item'),
        backgroundColor: warna_1,
      ),
      backgroundColor:
          Colors.green[100], // Mengatur warna latar belakang halaman
      body: Padding(
        padding: EdgeInsets.only(top: 25.0, left: 15.0, right: 15.0),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name of Goods',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16.0, // Sesuaikan ukuran font
                    fontWeight: FontWeight.bold, // Sesuaikan tebal font
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            //   child: TextField(
            //     controller: codeController,
            //     keyboardType: TextInputType.text,
            //     decoration: InputDecoration(
            //       labelText: 'Item Code',
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.circular(5.0),
            //       ),
            //       labelStyle: TextStyle(
            //         fontSize: 16.0, // Sesuaikan ukuran font
            //         fontWeight: FontWeight.bold, // Sesuaikan tebal font
            //       ),
            //     ),
            //     onChanged: (value) {},
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: stockController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Stock',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelStyle: TextStyle(
                    fontSize: 16.0, // Sesuaikan ukuran font
                    fontWeight: FontWeight.bold, // Sesuaikan tebal font
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: TextField(
                controller: priceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Price',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelStyle: TextStyle(
                    fontSize:
                        16.0, // Sesuaikan ukuran font sesuai keinginan Anda
                    fontWeight: FontWeight
                        .bold, // Sesuaikan tebal font sesuai keinginan Anda
                  ),
                ),
                onChanged: (value) {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: warna_1,
                        onPrimary: warna_3,
                      ),
                      child: Text(
                        'Save',
                        textScaleFactor: 1.4,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        if (isAdding) {
                          item = Item(
                            nameController.text,
                            int.parse(stockController.text),
                            int.parse(priceController.text),
                          );
                        } else {
                          item!.name = nameController.text;
                          item!.stock = int.parse(stockController.text);
                          item!.price = int.parse(priceController.text);
                        }
                        Navigator.pop(context, item);
                      },
                    ),
                  ),
                  Container(width: 5.0),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: warna_1,
                        onPrimary: warna_3,
                      ),
                      child: Text(
                        'Cancel',
                        textScaleFactor: 1.4,
                        style: TextStyle(fontSize: 15.0),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
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
