import 'package:bmi_rechner_v2/konstanten.dart';
import 'package:bmi_rechner_v2/widgets/kategorie_indikator_widget.dart';
import 'package:flutter/material.dart';

class BmiKategorieWidget extends StatelessWidget {
  const BmiKategorieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          KategorieIndikatorWidget(farbe: untergewicht, label: 'Untergewicht'),
          KategorieIndikatorWidget(farbe: normal, label: 'Normal'),
          KategorieIndikatorWidget(farbe: uebergewicht, label: 'Übergewicht'),
          KategorieIndikatorWidget(farbe: fett, label: 'Fettleibig'),
          KategorieIndikatorWidget(farbe: extrem, label: 'Extrem'),
        ],
      ),
    );
  }
}
