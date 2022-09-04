import 'package:flutter/material.dart';
import 'colors.dart';

class KartWidget extends StatelessWidget {
  final Widget? vicit;
  final String? yazilar1;
  final String? yazilar2;
  const KartWidget({
    @required this.vicit,
    this.yazilar2,
    this.yazilar1,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                yazilar2.toString(),
                style: TextStyle(
                  color: RenkTheme().textColor,
                  fontSize: 20,
                ),
              ),
              Text(
                yazilar1.toString(),
                style: TextStyle(color: RenkTheme().aciklamaColor),
              ),
            ],
          ),
          vicit!,
        ],
      ),
    );
  }
}

class KlipWidget extends StatelessWidget {
  const KlipWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: SizedBox(
          height: 60, width: 60, child: Image.asset("assets/images/3.jpeg")),
    );
  }
}
