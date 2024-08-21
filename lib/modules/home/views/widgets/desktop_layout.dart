import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/custom_desktop_side_bar.dart';
import 'package:responsive/modules/home/views/widgets/drawer_item.dart';
import 'package:responsive/modules/home/views/widgets/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: DrawerItem()),
        Expanded(flex:3,child: Padding(
          padding: EdgeInsets.symmetric(horizontal:16),
          child: TabletLayout(),
        )),
        Expanded(child: CustomDesktopSideBar())
      ],
    );
  }
}
