import 'dart:convert';

import 'package:farming_app/controllers/inventory_controller.dart';
import 'package:farming_app/pages/modules/livestock/add_livestock.dart';
import 'package:farming_app/pages/modules/livestock/widgets/livestock_tile.dart';
import 'package:farming_app/utils/global.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LiveStock extends StatefulWidget {
  const LiveStock({super.key});

  @override
  State<LiveStock> createState() => _LiveStockState();
}

class _LiveStockState extends State<LiveStock> {
  final InventoryController _livestockController =
      Get.put(InventoryController());
  int numberOfLiveStock = 0;
  List<dynamic> liveStock = [];

  @override
  void initState() {
    super.initState();
    _livestockController.getLiveStock();
    getTasks();
    print('Number of tasks $numberOfLiveStock heeeeere');
  }

  getTasks() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var token = prefs.getString('token');
      var response = await http.get(Uri.parse('${baseUrl}tasks/tasks/'),
          headers: {
            'Accept': 'application/json',
            'authorization': 'Bearer $token'
          });
      final responseData = jsonDecode(response.body);
      print('Response for gettasks ${responseData['count']}');
      setState(() {
        liveStock = responseData['results'];
        numberOfLiveStock = responseData['count'];
        print(numberOfLiveStock);
      });
      return responseData;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('LiveStock',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              showAddLiveStockModal(context);
            },
          ),
          const Gap(20),
        ],
      ),
      body: _livestockController.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 10),
                    color: Colors.white,
                    child: CustomTextField(
                        hintText: 'Search',
                        controller: TextEditingController()),
                  ),
                  Column(
                    children: [
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (((context, index) {
                            return LiveStockTile(
                              id: '${index + 1}',
                            );
                          })),
                          shrinkWrap: true,
                          itemCount: 10),
                    ],
                  )
                ],
              ),
            )),
    );
  }
}
