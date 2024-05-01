import 'package:flutter/material.dart';
import 'package:my_second_project/widgets/app_card.dart';
import 'package:my_second_project/widgets/app_drawer.dart';
import 'package:my_second_project/widgets/app_list_item.dart';


class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      // // appBar: MediaQuery.of(context).size.width < 1000 ? AppBar() : null,
      drawer: const AppDrawer(),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 1,
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return const AppCard();
              },
            ),
          ),
          // TODO : make all AppListItem Appear By Changing The Parent of ListView
          SizedBox(
            height: 70,
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
    // return Scaffold(
    //   body: Container(
    //     color: Colors.blue,
    //     child: const Center(
    //       child: Text(
    //         "Tablet Layout",
    //         style: TextStyle(
    //           fontSize: 50,
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}
