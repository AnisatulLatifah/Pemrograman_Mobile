import 'package:flutter/material.dart';

class ConvertWidget extends StatelessWidget {
  final VoidCallback konvertHandler;

  ConvertWidget({required this.konvertHandler});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: konvertHandler,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: Center(
          child: Text(
            "Konversi Suhu",
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
