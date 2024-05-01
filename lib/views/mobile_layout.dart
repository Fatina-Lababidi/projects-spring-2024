import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_second_project/widgets/app_card.dart';
import 'package:my_second_project/widgets/app_drawer.dart';
import 'package:my_second_project/widgets/app_list_item.dart';


class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1 / 3,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return const AppCard();
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const AppListItem();
              },
            ),
          ),
        ],
      ),
    );
    // return OrientationBuilder(builder: (context, orientation) {
    //   if (orientation == Orientation.portrait) {
    //     return Scaffold(
    //       body: Container(
    //         color: Colors.red,
    //         child: const Center(
    //           child: Text(
    //             "Portrait Mobile Layout",
    //             style: TextStyle(
    //               fontSize: 50,
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   } else {
    //     return Scaffold(
    //       body: Container(
    //         color: Colors.red,
    //         child: const Center(
    //           child: Text(
    //             "LandScape Mobile Layout",
    //             style: TextStyle(
    //               fontSize: 50,
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    // });
  }
}
