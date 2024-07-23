
import 'package:farming_app/pages/modules/dashboard/widgets/health_issue_tile.dart';
import 'package:farming_app/pages/modules/dashboard/widgets/task_box.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Row(
                  children: [
                    Icon(Icons.calendar_today, size: 16,),
                    Gap(5),
                    Text('23 July 2024', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200,),),
                    Gap(5),
                    Icon(Icons.eighteen_up_rating_sharp, size: 16),
                    Gap(5),
                    Text('24ºC', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),),
                    Gap(5),
                    Icon(Icons.location_on, size: 16),
                    Gap(5),
                    Text('Accra, Ghana', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200),),
                  ],
                ),
               const Gap(10),
                const Text('Good Morning, John', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, leadingDistribution: TextLeadingDistribution.even),),
                
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.add, color: Colors.white,),
                          Text('Add new livestock', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),),
                        ],
                      ),
                    ),
                    Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.add, color: Colors.white,),
                      Text('Log feeding', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.add, color: Colors.white,),
                      Text('Schedule task', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),),
                    ],
                  ),
                )
                  ],
                ),
                const Gap(20),
                const Text('Statistiques', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800,),),
                const Text('20', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),),
                const Text('Total livestock', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w200),),
                const Gap(10),
                const Text('Tasks', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskBox(
                      title: 'Today',
                      icon: const Icon(Icons.calendar_today, color: Colors.white,),
                      taskCount: 3,
                      color: Colors.blue,
                    ),
          
                    TaskBox(
                      title: 'Scheduled',
                      icon: const Icon(Icons.calendar_month, color: Colors.white),
                      taskCount: 3,
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
                      taskCount: 3,
                      color: Colors.blue,
                    ),
          
                    TaskBox(
                      title: 'Completed',
                      icon: const Icon(Icons.done_all, color: Colors.white),
                      taskCount: 3,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const Gap(10),
                const Text('Health issues', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),),
                HealthIssueTile(
                  title: 'Chicken treatment',
                  subtitle: 'Do sint amett veniam voluptate mollit voluptate enim commodo est sint.'
                ),
                HealthIssueTile(
                  title: 'Chicken treatment',
                  subtitle: 'Do sint amett veniam voluptate mollit voluptate enim commodo est sint.'
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

