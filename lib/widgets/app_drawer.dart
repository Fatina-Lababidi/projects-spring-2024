import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey.shade300,
      child: const Column(
        children: [
          DrawerHeader(
            child: Row(
              children: [
                CircleAvatar(
                  child: Text("M"),
                ),
                SizedBox(width: 10),
                Text("Mohammad")
              ],
            ),
          ),
          ListTile(
            title: Text("Dashboard"),
            leading: Icon(Icons.dashboard),
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
          ),
          ListTile(
            title: Text("Chat"),
            leading: Icon(Icons.chat),
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
