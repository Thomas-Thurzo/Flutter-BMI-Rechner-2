import 'package:flutter/material.dart';

class GroesseEingabeWidget extends StatelessWidget {
  const GroesseEingabeWidget({super.key, required this.groesseController});

  final TextEditingController groesseController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: TextField(
        autofocus: false,
        controller: groesseController,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Bitte die Größe (m) eingeben',
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
