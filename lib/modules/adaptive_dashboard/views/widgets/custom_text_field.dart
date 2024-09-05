import 'package:flutter/material.dart';
import 'package:responsive/utils/app_ui.dart';
import 'package:responsive/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, this.hintText});

  final TextEditingController controller;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: buildTextFieldBorder(),
        filled: true,
        fillColor: AppUI.whiteFA,
        enabledBorder:buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(),
        disabledBorder: buildTextFieldBorder(),
        hintStyle: Styles.textStyle16w400(context).copyWith(color: AppUI.greyAA),
        hintText: hintText,
      ),
    );
  }

  InputBorder buildTextFieldBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppUI.whiteFA));
  }
}
