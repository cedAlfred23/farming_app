import 'package:farming_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';  // To format the date

class AddLiveStockModal extends StatefulWidget {
  @override
  _AddLiveStockModalState createState() => _AddLiveStockModalState();
}

class _AddLiveStockModalState extends State<AddLiveStockModal> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controllers for input fields
  TextEditingController animalTypeController = TextEditingController();
  TextEditingController breedController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController acquisitionDateController = TextEditingController();
  TextEditingController currentWeightController = TextEditingController();
  TextEditingController currentAgeController = TextEditingController();

  // Variables for dropdowns
  String? selectedGender;
  String? selectedAcquisitionMethod;
  String? selectedStatus;

  // Sample Enum data for dropdowns
  final List<String> animalTypes = ['Cow', 'Goat', 'Chicken'];
  final List<String> genders = ['Male', 'Female'];
  final List<String> acquisitionMethods = ['Purchase', 'Birth', 'Gift'];
  final List<String> statuses = ['Healthy', 'Sick', 'Deceased'];

  // Method to call the API
  Future<void> submitData() async {
    if (_formKey.currentState!.validate()) {
      try {
        print('sending');
        var response = await http.post(
          Uri.parse('${baseUrl}inventory/items/'),  // Replace with your API URL
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'animal_type': animalTypeController.text,
            'breed': breedController.text,
            'name': nameController.text,
            'date_of_birth': dobController.text,
            'gender': selectedGender,
            'acquisition_date': acquisitionDateController.text,
            'acquisition_method': selectedAcquisitionMethod,
            'status': selectedStatus,
            'current_weight': double.parse(currentWeightController.text),
            'current_age': int.parse(currentAgeController.text),
          }),
        );

        if (response.statusCode == 201) {
          // Success response
          Navigator.of(context).pop();  // Close the modal
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Livestock added successfully!')),
          );
        } else {
          // Handle error response
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to add livestock.')),
          );
        }
      } catch (e) {
        print('Error: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('An error occurred.')),
        );
      }
    }
  }

  // Method to open the date picker and set the selected date
  Future<void> _selectDate(BuildContext context, TextEditingController controller) async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      setState(() {
        controller.text = DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: 'Animal Type'),
                items: animalTypes.map((type) {
                  return DropdownMenuItem(
                    value: type,
                    child: Text(type),
                  );
                }).toList(),
                onChanged: (value) {
                  animalTypeController.text = value!;
                },
                validator: (value) =>
                    value == null ? 'Please select an animal type' : null,
              ),
              TextFormField(
                controller: breedController,
                decoration: const InputDecoration(labelText: 'Breed'),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter the breed' : null,
              ),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
              ),
              // Date of Birth with DatePicker
              TextFormField(
                controller: dobController,
                decoration: const InputDecoration(
                  labelText: 'Date of Birth',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () => _selectDate(context, dobController),
                validator: (value) =>
                    value!.isEmpty ? 'Please select date of birth' : null,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: 'Gender'),
                items: genders.map((gender) {
                  return DropdownMenuItem(
                    value: gender,
                    child: Text(gender),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedGender = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Please select a gender' : null,
              ),
              // Acquisition Date with DatePicker
              TextFormField(
                controller: acquisitionDateController,
                decoration: const InputDecoration(
                  labelText: 'Acquisition Date',
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true,
                onTap: () => _selectDate(context, acquisitionDateController),
                validator: (value) =>
                    value!.isEmpty ? 'Please select acquisition date' : null,
              ),
              DropdownButtonFormField(
                decoration:
                    const InputDecoration(labelText: 'Acquisition Method'),
                items: acquisitionMethods.map((method) {
                  return DropdownMenuItem(
                    value: method,
                    child: Text(method),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedAcquisitionMethod = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Please select an acquisition method' : null,
              ),
              DropdownButtonFormField(
                decoration: const InputDecoration(labelText: 'Status'),
                items: statuses.map((status) {
                  return DropdownMenuItem(
                    value: status,
                    child: Text(status),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedStatus = value;
                  });
                },
                validator: (value) =>
                    value == null ? 'Please select a status' : null,
              ),
              TextFormField(
                controller: currentWeightController,
                decoration:
                    const InputDecoration(labelText: 'Current Weight'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter current weight' : null,
              ),
              TextFormField(
                controller: currentAgeController,
                decoration: const InputDecoration(labelText: 'Current Age'),
                keyboardType: TextInputType.number,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter current age' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: submitData,
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Function to show the modal
void showAddLiveStockModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => AddLiveStockModal(),
  );
}
