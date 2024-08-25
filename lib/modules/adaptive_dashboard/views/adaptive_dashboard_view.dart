import 'package:flutter/material.dart';
import 'package:responsive/modules/adaptive_dashboard/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive/shared/adaptive_layout.dart';

class AdaptiveDashboardView extends StatelessWidget {
  const AdaptiveDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
