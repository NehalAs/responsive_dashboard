import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/custom_text_field.dart';
import 'package:responsive/utils/styles.dart';

class TitledTextField extends StatelessWidget {
  const TitledTextField({super.key, required this.title, required this.hintText});
  final String title;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: Styles.textStyle16w500(context),),
        const SizedBox(height: 12,),
        CustomTextField(controller:TextEditingController(),hintText: hintText,)
      ],
    );
  }
}
