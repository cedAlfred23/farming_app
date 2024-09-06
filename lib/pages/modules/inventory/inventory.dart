import 'package:farming_app/data/inventory_items.dart';
import 'package:farming_app/pages/modules/inventory/inventory_details_page.dart';
import 'package:flutter/material.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 20,
        title: const Text('Inventory',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(itemBuilder: (context, index) {
              
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InventoryDetailsPage()));
                },
                child: ListTile(
                  tileColor: Colors.grey[200],
                  title: Text(inventoryItems[index]['Item Name']),
                  subtitle: Text(inventoryItems[index]['Item Type']),
                  leading: const Icon(Icons.label),
                ),
              );
            },
            itemCount: inventoryItems.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,)
          ],
        ),),
    );
  }
}