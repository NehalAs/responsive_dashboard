import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/grey_container_item.dart';
import 'package:responsive/modules/home/views/widgets/white_container_item.dart';

class CustomDesktopSideBar extends StatelessWidget {
  const CustomDesktopSideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
            flex: 2,
            child: GreyContainerItem(),
        ),
        SizedBox(height: 16,),
        Expanded(child: WhiteContainerItem()),
      ],
    );
  }
}
