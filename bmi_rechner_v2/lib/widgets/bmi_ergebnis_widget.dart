import 'package:flutter/material.dart';

class BmiErgebnisWidget extends StatelessWidget {
  const BmiErgebnisWidget({
    super.key,
    required this.ergebnis,
    required this.farbe,
  });

  final String ergebnis;
  final Color farbe;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          color: farbe,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Center(
          child: Text(
            'BMI: $ergebnis',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
