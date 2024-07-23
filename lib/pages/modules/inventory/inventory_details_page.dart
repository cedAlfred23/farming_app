import 'package:flutter/material.dart';

class InventoryDetailsPage extends StatefulWidget {
  const InventoryDetailsPage({super.key});

  @override
  State<InventoryDetailsPage> createState() => _InventoryDetailsPageState();
}

class _InventoryDetailsPageState extends State<InventoryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 20,
        title: const Text('Inventory Details',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: Text('Item Name'),
              subtitle: Text('Item Name'),
              leading: Icon(Icons.label),
            ),
            ListTile(
              title: Text('Quantity'),
              subtitle: Text('Quantity'),
              leading: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: Text('Description'),
              subtitle: Text('Description'),
              leading: Icon(Icons.description),
            ),
            ListTile(
              title: Text('Price'),
              subtitle: Text('Price'),
              leading: Icon(Icons.medical_services),
            ),
            ListTile(
              title: Text('Supplier'),
              subtitle: Text('Supplier'),
              leading: Icon(Icons.healing),
            ),
            ListTile(
              title: Text('Date Purchased'),
              subtitle: Text('Date Purchased'),
              leading: Icon(Icons.medication),
            ),
            ListTile(
              title: Text('Administered By'),
              subtitle: Text('Administered By'),
              leading: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}