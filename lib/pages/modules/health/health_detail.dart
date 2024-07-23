import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HealthDetailsPage extends StatefulWidget {
  const HealthDetailsPage({super.key});

  @override
  State<HealthDetailsPage> createState() => _HealthDetailsPageState();
}

class _HealthDetailsPageState extends State<HealthDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 20,
        title: const Text('Health Record',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.edit))],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView(
          children: [
            ListTile(
              title: Text('Record Type'),
              subtitle: Text('Illness, Vaccination, Routine Check'),
              leading: Icon(Icons.label),
            ),
            ListTile(
              title: Text('Date'),
              subtitle: Text('2023-04-01'),
              leading: Icon(Icons.calendar_today),
            ),
            ListTile(
              title: Text('Description'),
              subtitle: Text('Detailed description of the event'),
              leading: Icon(Icons.description),
            ),
            ListTile(
              title: Text('Diagnosis'),
              subtitle: Text('Specific diagnosis'),
              leading: Icon(Icons.medical_services),
            ),
            ListTile(
              title: Text('Treatment'),
              subtitle: Text('Treatment applied'),
              leading: Icon(Icons.healing),
            ),
            ListTile(
              title: Text('Medication and Dosage'),
              subtitle: Text('Medication given and its dosage'),
              leading: Icon(Icons.medication),
            ),
            ListTile(
              title: Text('Administered By'),
              subtitle: Text('Name of the person who administered the treatment'),
              leading: Icon(Icons.person),
            ),
            ListTile(
              title: Text('Veterinarian Name'),
              subtitle: Text('Name of the veterinarian'),
              leading: Icon(Icons.local_hospital),
            ),
            ListTile(
              title: Text('Follow-up Date'),
              subtitle: Text('2023-04-15'),
              leading: Icon(Icons.follow_the_signs),
            ),
            ListTile(
              title: Text('Outcome'),
              subtitle: Text('Outcome of the treatment'),
              leading: Icon(Icons.outbond),
            ),
            ListTile(
              title: Text('Notes'),
              subtitle: Text('Additional notes'),
              leading: Icon(Icons.note),
            ),
          ],
        ),
      ),
    );
  }
}
