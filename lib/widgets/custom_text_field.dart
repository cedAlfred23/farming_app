
import 'package:farming_app/utils/color_config.dart';
import 'package:farming_app/utils/styles_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart' as FontAwesome;
import 'package:gap/gap.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.title,
    this.FontAwesomeIcons,
    this.showIcon,
  });

  final TextEditingController controller;
  final String? hintText, title;
  final bool? showIcon;
  final IconData? FontAwesomeIcons;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12, bottom: 1),
          child: Text(title ?? '',
              style: h5WhiteText.copyWith(
                  fontSize: 15,
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w900)),
        ),
        Container(
          height: 40,
          padding: const EdgeInsets.only(left: 12),
          decoration: BoxDecoration(
            border: Border.all(
              color: BLACK.withOpacity(0.3)
            ),
              color: Colors.black.withOpacity(0.05),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                showIcon ?? true ? FontAwesome.FaIcon(FontAwesomeIcons ?? FontAwesome.FontAwesomeIcons.magnifyingGlass, size: 16,):Container(),
                
                //  FontAwesome.FaIcon(
                // FontAwesomeIcons ?? FontAwesome.FontAwesomeIcons.magnifyingGlass, size: 16,) : null,

                const Gap(5),
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: hintText,
                      border: InputBorder.none,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
