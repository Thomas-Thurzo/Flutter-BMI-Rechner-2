import 'package:flutter/material.dart';

class GewichtEingabeWidget extends StatelessWidget {
  const GewichtEingabeWidget({super.key, required this.gewichtController});

  final TextEditingController gewichtController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: TextField(
        controller: gewichtController,
        keyboardType: TextInputType.numberWithOptions(decimal: true),
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          hintText: 'Bitte das Gewicht (kg) eingeben',
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
