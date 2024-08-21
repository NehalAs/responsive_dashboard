import 'package:flutter/material.dart';
import 'package:responsive/modules/home/views/widgets/custom_sliver_grid.dart';
import 'package:responsive/modules/home/views/widgets/custom_sliver_list.dart';
import 'package:responsive/modules/home/views/widgets/horizontal_list_view.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: HorizontalListView(),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: 16,),
        ),
        CustomSliverList(),
      ],
    );
  }
}
