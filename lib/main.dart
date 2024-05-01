import 'package:flutter/material.dart';
import 'package:my_second_project/views/adaptive_layout.dart';
import 'package:my_second_project/views/destop_layout.dart';
import 'package:my_second_project/views/mobile_layout.dart';
import 'package:my_second_project/views/tablet_layout.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AdaptiveLayout(
        mobileLayout: MobileLayout(),
        tabletLayout: TabletLayout(),
        desktopLayout: DesktopLayout(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            // flex: 3,
            child: Container(
              width: 100,
              // height: 50,
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: 100,
              height: 500,
              color: Colors.blue,
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Expanded(
            child: Container(
              width: 500,
              height: 100,
              color: Colors.green,
              child: const FittedBox(
                // fit: BoxFit.fitWidth,
                child: Text(
                  "Hello",
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.amber,
              width: 200,
              height: 200,
              child: Center(
                child: FractionallySizedBox(
                  widthFactor: 0.2,
                  heightFactor: 0.8,
                  child: Container(
                    color: Colors.pink,
                    // width: 100,
                    // height: 100,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.deepPurpleAccent,
              child: Center(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Container(
                    width: 100,
                    // height: 100,
                    color: Colors.orange,
                    child: const Align(
                      alignment: Alignment(0, 1),
                      child: Text("Hello"),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth / 2,
            height: screenHeight / 3,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
