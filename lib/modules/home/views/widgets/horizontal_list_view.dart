import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/grey_container_item.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150,
      child: ListView.builder(
          itemBuilder: (context, index) => const AspectRatio(aspectRatio: 1,
          child: Padding(
            padding: EdgeInsetsDirectional.only(start:8),
            child: GreyContainerItem(),
          )),
          scrollDirection:Axis.horizontal,
      ),
    );
  }
}
