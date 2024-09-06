import 'dart:convert';
import 'package:farming_app/models/user/user_model.dart';
import 'package:farming_app/pages/modules/dashboard/widgets/health_issue_tile.dart';
import 'package:farming_app/pages/modules/dashboard/widgets/task_box.dart';
import 'package:farming_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numberOfTask = 0;
  List<dynamic> tasks = []; 
  int numberOfHealthIssues = 0;
  List<dynamic> healthIssues = []; 
  @override
  void initState() {
    super.initState();
    retrieveSharedPreference();
    getTasks();
    getHealthIssues();
  }

   getTasks () async{
    try{
      SharedPreferences prefs = await SharedPreferences.getInstance();
     var token = prefs.getString('token');
      var response =
          await http.get(Uri.parse('${baseUrl}tasks/tasks/'), 
          headers: {
        'Accept': 'application/json',
        'authorization': 'Bearer $token'
      });
      final responseData = jsonDecode(response.body);
      print('Response for gettasks ${responseData['count']}');
      setState(() {
        tasks = responseData['results'];
        numberOfTask = responseData['count'];
        // numberOfTask = response.body;
        print(numberOfTask);
      });
      return responseData;
    } catch(e){
      print(e);
    }
  }

   getHealthIssues() async{
    try{
      SharedPreferences prefs = await SharedPreferences.getInstance();
     var token = prefs.getString('token');
      var response =
          await http.get(Uri.parse('${baseUrl}management/livestock/'), 
          headers: {
        'Accept': 'application/json',
        'authorization': 'Bearer $token'
      });
     final responseData = jsonDecode(response.body);
      print('Response for getHealth ${responseData['count']}');
      setState(() {
        numberOfHealthIssues = responseData['count'];;
        healthIssues = responseData['results'];

      });
      return responseData;
    } catch(e){
      print(e);
    }
  }


  String username = '';

  void retrieveSharedPreference() async {
    await Future.delayed(const Duration(seconds: 3), () async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString('token');
      var userStoredString = prefs.getString('user') ?? '';

      Map<String, dynamic> userMap = jsonDecode(userStoredString);

      User userM = User.fromJson(userMap);
      setState(() {
        username = userM.first_name!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      size: 16,
                    ),
                    const Gap(5),
                    Text(
                      '${DateTime.now().day.toString()}/${DateTime.now().month.toString()}/${DateTime.now().year.toString()}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    const Gap(5),
                    const Icon(Icons.eighteen_up_rating_sharp, size: 16),
                    const Gap(5),
                    const Text(
                      '24ºC',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                    ),
                    const Gap(5),
                    const Icon(Icons.location_on, size: 16),
                    const Gap(5),
                    const Text(
                      'Accra, Ghana',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
                const Gap(10),
                Text(
                  'Hello, $username',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      leadingDistribution: TextLeadingDistribution.even),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     // Container(
                //     //   padding: const EdgeInsets.all(10),
                //     //   height: 100,
                //     //   width: 120,
                //     //   decoration: BoxDecoration(
                //     //       color: Colors.blue,
                //     //       borderRadius: BorderRadius.circular(12)),
                //     //   child: const Column(
                //     //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     //     crossAxisAlignment: CrossAxisAlignment.start,
                //     //     children: [
                //     //       Icon(
                //     //         Icons.add,
                //     //         color: Colors.white,
                //     //       ),
                //     //       Text(
                //     //         'Add new livestock',
                //     //         style: TextStyle(
                //     //             fontSize: 20,
                //     //             fontWeight: FontWeight.w300,
                //     //             color: Colors.white),
                //     //       ),
                //     //     ],
                //     //   ),
                //     // ),
                //     // Container(
                //     //   padding: const EdgeInsets.all(10),
                //     //   height: 100,
                //     //   width: 120,
                //     //   decoration: BoxDecoration(
                //     //       color: Colors.blue,
                //     //       borderRadius: BorderRadius.circular(12)),
                //     //   child: const Column(
                //     //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     //     crossAxisAlignment: CrossAxisAlignment.start,
                //     //     children: [
                //     //       Icon(
                //     //         Icons.add,
                //     //         color: Colors.white,
                //     //       ),
                //     //       Text(
                //     //         'Log feeding',
                //     //         style: TextStyle(
                //     //             fontSize: 20,
                //     //             fontWeight: FontWeight.w300,
                //     //             color: Colors.white),
                //     //       ),
                //     //     ],
                //     //   ),
                //     // ),
                //     // Container(
                //     //   padding: const EdgeInsets.all(10),
                //     //   height: 100,
                //     //   width: 120,
                //     //   decoration: BoxDecoration(
                //     //       color: Colors.blue,
                //     //       borderRadius: BorderRadius.circular(12)),
                //     //   child: const Column(
                //     //     mainAxisAlignment: MainAxisAlignment.spaceAround,
                //     //     crossAxisAlignment: CrossAxisAlignment.start,
                //     //     children: [
                //     //       Icon(
                //     //         Icons.add,
                //     //         color: Colors.white,
                //     //       ),
                //     //       Text(
                //     //         'Schedule task',
                //     //         style: TextStyle(
                //     //             fontSize: 20,
                //     //             fontWeight: FontWeight.w300,
                //     //             color: Colors.white),
                //     //       ),
                //     //     ],
                //     //   ),
                //     // )
                //   ],
                // ),
                const Gap(20),
                const Text(
                  'Statistics',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text( numberOfHealthIssues.toString(),
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                ),
                const Text(
                  'Total livestock',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),
                ),
                const Gap(10),
                const Text(
                  'Tasks',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskBox(
                      title: 'Today',
                      icon: const Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      taskCount: numberOfTask,
                      color: Colors.blue,
                    ),
                    TaskBox(
                      title: 'Scheduled',
                      icon:
                          const Icon(Icons.calendar_month, color: Colors.white),
                      taskCount: numberOfTask,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskBox(
                      title: 'All',
                      icon: const Icon(Icons.all_inbox, color: Colors.white),
                      taskCount: numberOfTask,
                      color: Colors.blue,
                    ),
                    TaskBox(
                      title: 'Completed',
                      icon: const Icon(Icons.done_all, color: Colors.white),
                      taskCount: numberOfTask,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const Gap(10),
                const Text(
                  'Health issues',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
numberOfHealthIssues == 0 ? Text('Nothing to see yet', style: TextStyle(fontSize: 20),):
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: numberOfTask,
                  itemBuilder: (context, index) {
                    return HealthIssueTile(
                      subtitle: healthIssues[index]['breed'],
                      title: healthIssues[index]['name'],
                    );
                  },
                ),
                
                const Gap(10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
