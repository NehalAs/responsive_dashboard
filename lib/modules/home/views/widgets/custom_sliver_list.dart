import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/white_container_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverList.builder(
      itemBuilder: (context, index) => const WhiteContainerItem(),
      itemCount: 16,
    );
  }
}
