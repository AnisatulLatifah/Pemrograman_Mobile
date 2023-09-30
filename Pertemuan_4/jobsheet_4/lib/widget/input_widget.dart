import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    required this.etInput,
  });

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: etInput,
      decoration: InputDecoration(
        labelText: 'Masukkan Suhu Dalam Celcius',
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      keyboardType: TextInputType.number,
    );
  }
}
