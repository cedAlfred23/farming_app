import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LiveStockDetailsPage extends StatefulWidget {
  const LiveStockDetailsPage({super.key});

  @override
  State<LiveStockDetailsPage> createState() => _LiveStockDetailsPageState();
}

class _LiveStockDetailsPageState extends State<LiveStockDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 20,
        title: const Text('Sheep',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Details',
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            )),
              ListTile(
                title: Text('Type',
            ),
                subtitle: Text('Sheep'),
                leading: Icon(Icons.category),
              ),
              ListTile(
                title: Text('Breed:',
            ),
                subtitle: Text('American'),
                leading: Icon(Icons.pets),
              ),
              ListTile(
                title: Text('Name:',
            ),
                subtitle: Text('Sheeper'),
                leading: Icon(Icons.badge),
              ),
              ListTile(
                title: Text('Tag number:',
            ),
                subtitle: Text('109304'),
                leading: Icon(Icons.confirmation_number),
              ),
              ListTile(
                title: Text('Date of birth:',
            ),
                subtitle: Text('12-12-2021'),
                leading: Icon(Icons.cake),
              ),
              ListTile(
                title: Text('Gender:',
            ),
                subtitle: Text('Male'),
                leading: Icon(Icons.male),
              ),
              ListTile(
                title: Text('Acquisition date:',
            ),
                subtitle: Text('12-12-2021'),
                leading: Icon(Icons.calendar_today),
              ),
              ListTile(
                title: Text('Acquisition method:',
            ),
                subtitle: Text('Bought'),
                leading: Icon(Icons.shopping_cart),
              ),
              ListTile(
                title: Text('Current weight:',
            ),
                subtitle: Text('12kg'),
                leading: Icon(Icons.monitor_weight),
              ),
              ListTile(
                title: Text('Photo:',
            ),
                subtitle: Text('No image available'),
                leading: Icon(Icons.photo),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
