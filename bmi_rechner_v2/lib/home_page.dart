import 'package:bmi_rechner_v2/konstanten.dart';
import 'package:bmi_rechner_v2/widgets/berechnungs_button_widget.dart';
import 'package:bmi_rechner_v2/widgets/bmi_ergebnis_widget.dart';
import 'package:bmi_rechner_v2/widgets/bmi_kategorie_widget.dart';
import 'package:bmi_rechner_v2/widgets/gewicht_eingabe_widget.dart';
import 'package:bmi_rechner_v2/widgets/groesse_eingabe_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variablen
  TextEditingController gewichtController = TextEditingController();
  TextEditingController groesseController = TextEditingController();
  String bmiErgebnis = " ";
  Color farbe = Colors.transparent;

  // Methode zum BMI berechnen
  void berechneBmi() {
    var gewichtDouble = double.parse(gewichtController.text);
    var groesseDouble = double.parse(groesseController.text);
    var ergebnis = (gewichtDouble / (groesseDouble * groesseDouble));
    Color meineFarbe = Colors.transparent;

    if (ergebnis < 18.5) {
      meineFarbe = untergewicht;
    } else if (ergebnis > 18.5 && ergebnis <= 24.9) {
      meineFarbe = normal;
    } else if (ergebnis >= 25 && ergebnis <= 29.9) {
      meineFarbe = uebergewicht;
    } else if (ergebnis >= 30 && ergebnis <= 34.9) {
      meineFarbe = fett;
    } else if (ergebnis >= 35) {
      meineFarbe = extrem;
    }

    setState(() {
      bmiErgebnis = ergebnis.toStringAsFixed(2);
      farbe = meineFarbe;
    });
  }

  @override
  Widget build(BuildContext context) {
    double geraetHoehe = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: geraetHoehe,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [const Color(0xFF6DD5ED), const Color(0xFF2193B0)],
              ),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100),
                  Text(
                    'BMI Rechner',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0038FF),
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 30),

                  // TextField Gewicht Eingabe
                  GewichtEingabeWidget(gewichtController: gewichtController),

                  // TextField Grösse Eingabe
                  GroesseEingabeWidget(groesseController: groesseController),

                  // Berechnungs Button
                  BerechnungsButtonWidget(onPressed: berechneBmi),
                  SizedBox(height: 80),

                  // BMI Ergebnis Container
                  BmiErgebnisWidget(ergebnis: bmiErgebnis, farbe: farbe),
                  SizedBox(height: 80),

                  // BMI Kategorie Farben
                  BmiKategorieWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
