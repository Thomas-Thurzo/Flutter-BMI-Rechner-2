import 'package:flutter/material.dart';

class KategorieIndikatorWidget extends StatelessWidget {
  const KategorieIndikatorWidget({
    super.key,
    required this.farbe,
    required this.label,
  });

  final Color farbe;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: farbe,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        Text(label, style: TextStyle(fontSize: 15)),
      ],
    );
  }
}
