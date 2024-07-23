import 'package:farming_app/utils/color_config.dart';
import 'package:farming_app/utils/proporties.dart';
import 'package:flutter/material.dart';

Widget textFormField({
  Function()? function,
  @required String? hintText,
  String? labelText,
  String? validateMsg,
  IconData? icon,
  IconData? prefixIcon,
  Color iconColor = BLACK,
  Color prefixIconColor = BLACK,
  Color? cursorColor,
  Color? textColor,
  Color labelColor = BLACK,
  Color? backgroundColor,
  @required TextEditingController? controller,
  bool validate = true,
  bool suggestion = true,
  TextInputType inputType = TextInputType.text,
  int? maxLine = 1,
  int? minLine = 1,
  bool validateEmail = false,
  double? width,
  double? cursorHeight = 20,
  enable = true,
  bool removeBorder = false,
  bool removeOutline = true,
  bool autofocus = false,
  void Function()? onIconTap,
  TextInputAction? inputAction,
  void Function()? onEditingComplete,
  void Function(String text)? onTextChange,
  String? Function(String text)? validator,
  @required FocusNode? focusNode,
  required BuildContext context,
  bool readOnly = false,
  bool showBorderRound = false,
  Color borderColor = BLACK,
  TextCapitalization textCapitalization = TextCapitalization.sentences,
  int? maxLength,
  double borderWidth = 1,
  double borderRadius = 5,
  bool isDense = true,
  double? height = 15,
}) {
  final theme = Theme.of(context);
  return SizedBox(
    width: width,
    child: TextFormField(
      onTap: function,
      readOnly: readOnly,
      enableInteractiveSelection: true,
      enabled: enable,
      enableSuggestions: suggestion,
      keyboardType: inputType,
      controller: controller,
      minLines: minLine,
      maxLines: maxLine,
      maxLength: maxLength,
      focusNode: focusNode,
      autofocus: autofocus,
      textInputAction: inputAction,
      cursorColor: cursorColor,
      cursorHeight: cursorHeight ?? null,
      textCapitalization:
          validateEmail ? TextCapitalization.none : textCapitalization,
      style: theme.textTheme.bodyMedium,
      onEditingComplete: () => focusNode!.unfocus(),
      onChanged: onTextChange == null ? null : (text) => onTextChange(text),
      decoration: InputDecoration(
        // constraints: BoxConstraints(maxHeight: 50, minHeight: 50),
        contentPadding: height == null
            ? EdgeInsets.symmetric(vertical: 15, horizontal: 10)
            : EdgeInsets.symmetric(vertical: height, horizontal: 10),
        isDense: isDense,
        hintText: hintText,
        hintStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.textTheme.bodyMedium!.color!.withOpacity(.5)),
        labelText: labelText,
        labelStyle: theme.textTheme.bodyMedium!.copyWith(
            color: theme.textTheme.bodyMedium!.color!.withOpacity(.5)),
        filled: true,
        fillColor: backgroundColor ?? theme.colorScheme.surface,
        suffixIcon: icon == null
            ? null
            : IconButton(
                onPressed: onIconTap,
                icon: Icon(
                  icon,
                  color: theme.iconTheme.color,
                ),
              ),
        prefixIcon: prefixIcon == null
            ? null
            : Icon(prefixIcon, color: theme.iconTheme.color),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: removeOutline
              ? BorderSide.none
              : BorderSide(
                  color: borderColor,
                  width: borderWidth,
                ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: removeOutline
              ? BorderSide.none
              : BorderSide(
                  color: borderColor,
                  width: borderWidth,
                ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: removeOutline
              ? BorderSide.none
              : BorderSide(
                  color: BLACK,
                  width: borderWidth,
                ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: removeOutline
              ? BorderSide.none
              : BorderSide(
                  color: borderColor,
                  width: borderWidth,
                ),
        ),
        errorStyle: TextStyle(
          color: Colors.red,
        ),
      ),
      validator: validator == null
          ? (value) {
              RegExp regex = RegExp(PATTERN);
              if (value!.isEmpty && validate) {
                return validateMsg;
              } else if (validateEmail && !regex.hasMatch(value)) {
                return "Please enter a valid email address";
              }
              return null;
            }
          : (value) => validator(value!),
    ),
  );
}
