import 'package:flutter/material.dart';

class RiwayatKonversi extends StatelessWidget {
  final List<String> listViewItem;
  final VoidCallback clearHistoryCallback;

  RiwayatKonversi(
      {required this.listViewItem, required this.clearHistoryCallback});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Riwayat Konversi",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: clearHistoryCallback,
              child: Text("Clear"),
            )
          ],
        ),
        Expanded(
          child: ListView(
            children: listViewItem.map((String value) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  value,
                  style: TextStyle(fontSize: 15),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
