import 'package:coolapp/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "https://avatars.githubusercontent.com/u/89641167?v=4";

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            accountName: Text(
              "Suman Biswas",
              style: TextStyle(color: Colors.white),
            ),
            accountEmail: Text(
              "textsumanb@gmail.com",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.profile_circled),
            title: const Text('Profile'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.loginRoute);
            },
          ),
        ],
      ),
    );
  }
}
