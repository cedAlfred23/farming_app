import 'package:farming_app/pages/modules/livestock/widgets/livestock_tile.dart';
import 'package:farming_app/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class LiveStock extends StatefulWidget {
  const LiveStock({super.key});

  @override
  State<LiveStock> createState() => _LiveStockState();
}

class _LiveStockState extends State<LiveStock> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('LiveStock', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900)),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
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
              padding: EdgeInsets.only(bottom: 10),
              color: Colors.white,
              child: CustomTextField(
                  hintText: 'hintText', controller: TextEditingController()),
            ),
            Column(
              children: [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (((context, index) {
                      return const LiveStockTile();
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
