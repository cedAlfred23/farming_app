
import 'package:flutter/material.dart';

class TaskBox extends StatelessWidget {
   TaskBox({
    required this.title,
    required this.color,
    // required this.type,
    this.taskCount,
    required this.icon,

    super.key,
  });

  String title;
  int? taskCount;
  Icon icon;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 70,
      width: 190,
      decoration: BoxDecoration(
      color: Colors.blue,
        borderRadius: BorderRadius.circular(12)
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              icon,
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
            ],
          ),
          Text(taskCount.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)
        ],
      ),
    );
  }
}