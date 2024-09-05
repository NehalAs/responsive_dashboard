import 'package:flutter/material.dart';
import 'package:responsive/utils/app_ui.dart';
import 'package:responsive/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.buttonColor, this.textColor,});

  final String text;
  final Color? buttonColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: MaterialButton(
        color: buttonColor,
        elevation: 0,
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12),borderSide: BorderSide.none),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18w600(context).copyWith(color:textColor),
        ),
      ),
    );
  }
}
