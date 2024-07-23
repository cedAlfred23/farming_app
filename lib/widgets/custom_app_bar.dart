
import 'package:farming_app/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

Widget myAppBar(String? title, icon, bottom, center) {
  return AppBar(
    leading: CircleAvatar(
      radius: 30,
      child: Image.asset(kImageUserPlaceholder),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    centerTitle: center,
    automaticallyImplyLeading: center,
    backgroundColor: Colors.amber,
    elevation: 0,
    title: Text(title??'',
        style: GoogleFonts.lato(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600)),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: icon,
      )
    ],
    bottom: bottom,
  );
}

otherAppBar(String title, icon, bottom, context) {
  return AppBar(
    iconTheme: const IconThemeData(color: Colors.black),
    leadingWidth: 45,
    leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios,
          size: 16,
        )),
    centerTitle: false,
    backgroundColor: Colors.amber,
    elevation: 0,
    title: Text(title,
        style: GoogleFonts.lato(
            fontSize: 15, color: Colors.black, fontWeight: FontWeight.w600)),
    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: icon,
      )
    ],
    bottom: bottom,
  );
}

//Widget font = GoogleFonts.lato();

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.height,
    required this.width,
    this.centerWidget,
    this.leftWidget
  });

  final double height;
  final double width;
  final Widget? centerWidget;
  final Widget? leftWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: (){
              print('tapped');
             Scaffold.of(context).openDrawer();
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CircleAvatar(
                radius: 15,
                child: Image.asset(kImageUserPlaceholder)),
            ),
          ),
          SizedBox(
            width: width * 0.7,
            child: Center(child: centerWidget ?? Container())),
          SizedBox(
            // width: width * 0.07,
            child: leftWidget ?? Container())
        ],
      ),
    );
  }
}