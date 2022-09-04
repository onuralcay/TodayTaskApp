import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CardTaslak extends StatelessWidget {
  final String? yazi2;

  const CardTaslak({
    super.key,
    @required this.yazi2,
    dynamic dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shadowColor: RenkTheme().aciklamaColor,
        elevation: 8,
        color: RenkTheme().konteynirColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            trailing: CircularPercentIndicator(
              radius: 25.0,
              lineWidth: 15.0,
              animation: true,
              percent: 66 / 100,
              center: const Text(
                "66%",
                style: TextStyle(fontSize: 8),
              ),
              backgroundColor: const Color.fromARGB(255, 237, 233, 233),
              progressColor: const Color.fromARGB(255, 216, 140, 140),
            ),
            title: Text(
              yazi2.toString(),
              style: TextStyle(
                  fontSize: 18,
                  color: RenkTheme().aciklamaColor,
                  fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "${DateTime.now().hour}:${DateTime.now().minute}",
              style: TextStyle(color: RenkTheme().aciklamaColor),
            ),
          ),
        ),
      ),
    );
  }
}
