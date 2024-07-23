
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HealthIssueTile extends StatelessWidget {
  HealthIssueTile({
    required this.title,
    required this.subtitle,
    super.key,
  });
  String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
          color: Colors.blue,
            borderRadius: BorderRadius.circular(12)
          ),
          child:  ListTile(
            title: Text(title, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),),
            subtitle: Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w200),),
          ),
        ),
        Gap(5)
      ],
    );
  }
}