import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/custom_sliver_grid.dart';
import 'package:responsive/modules/home/views/widgets/custom_sliver_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomSliverGrid(),
        SliverToBoxAdapter(
          child: SizedBox(height: 16,),
        ),
        CustomSliverList(),
      ],
    );
  }
}
