import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  InputWidget({required this.labeltxt, required this.prefixicon});
  final IconData prefixicon;
  final String labeltxt;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
          decoration: InputDecoration(
              labelText: labeltxt,
              fillColor: Color(0xFFDEDEDE),
              prefixIcon: Icon(prefixicon),
              filled: true)),
    );
  }
}
