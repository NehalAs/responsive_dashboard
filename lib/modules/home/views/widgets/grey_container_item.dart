import 'package:flutter/material.dart';

class GreyContainerItem extends StatelessWidget {
  const GreyContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );
  }
}
