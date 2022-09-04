import 'package:flutter/material.dart';
import 'package:flutter_application_2/second_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 110,
        width: 70,
        child: FittedBox(
          child: floatTusu(context),
        ),
      ),
      body: altImage(context, size),
    );
  }

  Stack altImage(BuildContext context, Size size) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/1.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        ustContainer(size),
      ],
    );
  }

  Stack ustContainer(Size size) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height / 2,
            width: size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white.withOpacity(0.5)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    width: size.width,
                    child: const Text(
                      "Organize Your Daily Task",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 103, 58, 183),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Text(
                    "All the task managment feature organize in our app and more",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 156, 39, 176),
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    );
  }

  FloatingActionButton floatTusu(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: const Color.fromARGB(255, 119, 75, 195),
      child: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const TodayTask()));
          },
          icon: const Icon(Icons.skip_next_rounded)),
    );
  }
}
