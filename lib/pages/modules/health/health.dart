import 'package:farming_app/pages/modules/health/health_detail.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Health extends StatefulWidget {
  const Health({super.key});

  @override
  State<Health> createState() => _HealthState();
}

class _HealthState extends State<Health> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _diagnosisController = TextEditingController();
  final TextEditingController _treatmentController = TextEditingController();
  final TextEditingController _medicationController = TextEditingController();
  final TextEditingController _administeredByController =
      TextEditingController();
  final TextEditingController _veterinarianNameController =
      TextEditingController();
  final TextEditingController _followUpDateController = TextEditingController();
  final TextEditingController _outcomeController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  String? _recordType;

  Future<void> _showAddEventDialog(BuildContext context) async {
    final TextEditingController titleController = TextEditingController();

    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: const Text('Add New Health Record'),
              content: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DropdownButtonFormField<String>(
                          value: _recordType,
                          hint: Text('Select Record Type'),
                          items: <String>[
                            'Illness',
                            'Vaccination',
                            'Routine Check'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              _recordType = newValue;
                            });
                          },
                        ),
                        TextFormField(
                            controller: _dateController,
                            decoration: InputDecoration(labelText: 'Date')),
                        TextFormField(
                            controller: _descriptionController,
                            decoration:
                                InputDecoration(labelText: 'Description')),
                        TextFormField(
                            controller: _diagnosisController,
                            decoration:
                                InputDecoration(labelText: 'Diagnosis')),
                        TextFormField(
                            controller: _treatmentController,
                            decoration:
                                InputDecoration(labelText: 'Treatment')),
                        TextFormField(
                            controller: _medicationController,
                            decoration: InputDecoration(
                                labelText: 'Medication and Dosage')),
                        TextFormField(
                            controller: _administeredByController,
                            decoration:
                                InputDecoration(labelText: 'Administered By')),
                        TextFormField(
                            controller: _veterinarianNameController,
                            decoration: InputDecoration(
                                labelText: 'Veterinarian Name')),
                        TextFormField(
                            controller: _followUpDateController,
                            decoration:
                                InputDecoration(labelText: 'Follow-up Date')),
                        TextFormField(
                            controller: _outcomeController,
                            decoration: InputDecoration(labelText: 'Outcome')),
                        TextFormField(
                            controller: _notesController,
                            decoration: InputDecoration(labelText: 'Notes')),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              // Implement the save functionality
                            },
                            child: Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }

  Future<void> _showSfCalendar(BuildContext context) async {
    final TextEditingController titleController = TextEditingController();

    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: Colors.white,
            child: SfCalendar(
                  view: CalendarView.month,
                  monthViewSettings: MonthViewSettings(
                      appointmentDisplayMode:
                          MonthAppointmentDisplayMode.appointment),
                ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                _showAddEventDialog(context);
              }),
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () {
              _showSfCalendar(context);
            },
          ),
          const Gap(20),
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: CustomTextField(
                  hintText: 'hintText', controller: TextEditingController()),
            ),
            Column(
              children: [
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (((context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HealthDetailsPage()));
                          },
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            leading: const Text('Id',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white)),
                            title: const Text('Sheep',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                            subtitle: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Breed',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white)),
                                Text(' 3 months',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white))
                              ],
                            ),
                            trailing: const Text('Treatment',
                                style: const TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white)),
                            tileColor: Colors.blue,
                          ),
                        ),
                      );
                    })),
                    shrinkWrap: true,
                    itemCount: 1),
              ],
            )
          ],
        ),
      )),
    );
  }
}
