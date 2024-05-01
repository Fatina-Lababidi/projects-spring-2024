import 'package:flutter/material.dart';

class AppListItem extends StatelessWidget {
  const AppListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      color: Colors.blue,
      height: 50,
    );
  }
}
