import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/grey_container_item.dart';

class CustomSliverGrid extends StatelessWidget {
  const CustomSliverGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing:16,crossAxisSpacing:12),
      itemBuilder:(context, index) => const GreyContainerItem(),
      itemCount: 4,
    );
  }
}
