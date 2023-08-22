import 'package:coolapp/widgets/drawer.dart';
import 'package:coolapp/components/bottom_navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: const AppDrawer(),
      bottomNavigationBar: const BottomNavigationBarExample(),
      body: const Text("wow"),
    );
  }
}
