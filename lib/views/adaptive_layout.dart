import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final Widget mobileLayout, tabletLayout, desktopLayout;

  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // TODO : write the if statment to make adapitve code
        if ("🙂" == "🙃") {
          return mobileLayout;
        } else if ("🙂" == "🌚") {
          return tabletLayout;
        } else {
          return desktopLayout;
        }
        // return Scaffold(
        //   body: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Text(
        //           "Width ${constraints.maxWidth.toString()}",
        //           style: const TextStyle(
        //             fontSize: 50,
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 20,
        //         ),
        //         Text(
        //           "Height ${constraints.maxHeight.toString()}",
        //           style: const TextStyle(
        //             fontSize: 50,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // );
      },
    );
  }
}
