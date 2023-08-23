import 'dart:convert';

import 'package:coolapp/models/catalog.dart';
import 'package:coolapp/widgets/drawer.dart';
import 'package:coolapp/components/bottom_navbar.dart';
import 'package:coolapp/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Products products;
  late Item item;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson = await rootBundle.loadString("assets/data/catalog.json");
    Map<String, dynamic> jsonMap = json.decode(catalogJson);
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      item = Item.fromJson(jsonMap);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      drawer: const AppDrawer(),
      bottomNavigationBar: const BottomNavigationBarExample(),
      body: isLoading
          ? Center(
              child: Transform.scale(
                scale: 0.5,
                child: const CircularProgressIndicator(),
              ),
            )
          : ListView.builder(
              itemCount: item.products!.length,
              itemBuilder: (context, index) =>
                  ItemWidget(item: item.products![index]),
            ),
    );
  }
}
