import 'package:flutter/material.dart';

import '../styles/colors.dart';

class MyFormField extends StatelessWidget {
  final Widget? prefix;

  final TextEditingController controller;

  VoidCallback? onTap ;
  final String validateText;

  final bool isPassword;

  final TextInputType inputType;

  final String hintText;
  final TextAlign textAlign;
  final Color color;

  MyFormField({
    Key? key,
    required this.controller,
    required this.validateText,
    this.isPassword = false,
    required this.inputType,
    required this.hintText,
    this.prefix,
    this.textAlign = TextAlign.start,
    this.color = AppColor.grey,
    this.onTap ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return validateText;
        }
      },
      onTap: onTap!,
      obscureText: isPassword,
      keyboardType: inputType,
      textAlign: textAlign,
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide.none
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12.0)),
          borderSide: BorderSide.none
        ),
        prefixIcon: prefix,
        fillColor: color,
        filled: true,
      ),
    );
  }
}
