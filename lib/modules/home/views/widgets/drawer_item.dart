import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/custom_list_tile_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[200],
      child: const Column(
        children: [
          DrawerHeader(child:Icon(Icons.favorite_rounded,color: Colors.black,size: 56,)),
          CustomListTileItem(icon: Icons.home, title: 'D A S H B O A R D'),
          CustomListTileItem(icon: Icons.settings, title: 'S E T T I N G S'),
          CustomListTileItem(icon: Icons.info, title: 'A B O U T'),
          CustomListTileItem(icon: Icons.logout_outlined, title: 'L O G O U T'),
        ],
      ),
    );
  }
}
