import 'package:belanja_jb5/models/item.dart';
import 'package:belanja_jb5/widgets/item_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Big Mac Burger',
        price: 4,
        description: 'Iconic double-decker burger with special sauce.',
        image: AssetImage('images/assets/burger.png')),
    Item(
        name: 'McDonalds French Fries',
        price: 2,
        description: 'Crispy, golden fries seasoned to perfection.',
        image: AssetImage('images/assets/kentang.png')),
    Item(
        name: 'McNuggets',
        price: 3,
        description:
            'Tender, flavorful chicken bites with various dipping sauces.',
        image: AssetImage('images/assets/nugget.png')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anisa's Mc Donalds"),
        backgroundColor: Colors.red,
        actions: <Widget>[Image.asset('images/assets/logo.png')],
      ),
      body: Container(
        // margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: item, //mengirim objek item ke item_page.dart
                );
              },
              child:
                  ItemCard(item: item), //widget ItemCard untuk menampilkan item
            );
          },
        ),
      ),
    );
  }
}
