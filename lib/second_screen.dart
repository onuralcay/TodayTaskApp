import 'package:flutter_application_2/ust_container.dart';
import 'package:flutter_application_2/card_taslak.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/colors.dart';

import 'buyuk_container.dart';

class TodayTask extends StatefulWidget {
  const TodayTask({super.key});

  @override
  State<TodayTask> createState() => _TodayTaskState();
}

class _TodayTaskState extends State<TodayTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(150)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: const Color.fromARGB(255, 229, 122, 165),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.date_range,
                        size: 35,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.calendar_month,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      size: 35,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 110,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color.fromARGB(255, 229, 122, 165),
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.add, size: 33)),
          ),
        ),
      ),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const KartWidget(
                vicit: KlipWidget(),
                yazilar1: "4 Task Today",
                yazilar2: "16 Aug 2022",
              ),
              const Sircular(),
              Container(
                margin: const EdgeInsets.all(23),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Today's Task",
                  style: TextStyle(
                      color: RenkTheme().aciklamaColor,
                      fontSize: 23,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CardTaslak(
                yazi2: "Icon Design",
                dateTime: DateTime.now(),
              ),
              CardTaslak(
                yazi2: "Wirefarming",
                dateTime: DateTime.now(),
              ),
              CardTaslak(
                yazi2: "Prototyping",
                dateTime: DateTime.now(),
              ),
              CardTaslak(
                yazi2: "Icon Design",
                dateTime: DateTime.now(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YuzdeWidget extends StatelessWidget {
  const YuzdeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        alignment: Alignment.center,
        child: CircularPercentIndicator(
          radius: 40.0,
          lineWidth: 17.0,
          animation: true,
          percent: 66 / 100,
          center: const Text("66%"),
          backgroundColor: const Color.fromARGB(255, 237, 233, 233),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: const Color.fromARGB(255, 240, 102, 102),
        ),
      ),
    );
  }
}
