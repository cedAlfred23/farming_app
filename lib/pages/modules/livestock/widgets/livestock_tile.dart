
import 'package:farming_app/pages/modules/livestock/livestock_detail_page.dart';
import 'package:flutter/material.dart';

class LiveStockTile extends StatelessWidget {
  const LiveStockTile({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const LiveStockDetailsPage()));
        },
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          leading: Text(id, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Colors.white)),
          title: const Text('Sheep', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white)),
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Breed', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Colors.white)),
              Text(' 3 months', style: TextStyle(fontSize: 15, color: Colors.white))
            ],
          ),
          trailing: const Text('Treatment', style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900, color: Colors.white)),
          tileColor: Colors.blue,
        ),
      ),
    );
  }
}
