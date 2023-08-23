import 'package:coolapp/models/catalog.dart';
import 'package:coolapp/widgets/drawer.dart';
import 'package:coolapp/components/bottom_navbar.dart';
import 'package:coolapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      drawer: const AppDrawer(),
      bottomNavigationBar: const BottomNavigationBarExample(),
      body: ListView.builder(
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) =>
            ItemWidget(item: CatalogModel.items[index]),
      ),
    );
  }
}
