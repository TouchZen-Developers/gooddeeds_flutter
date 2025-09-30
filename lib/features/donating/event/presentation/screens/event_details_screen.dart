import 'package:flutter/material.dart';
import 'package:gooddeeds/features/donating/event/presentation/widgets/event_header.dart';
import 'package:gooddeeds/shared/design_system/components/app_app_bar.dart';
import 'package:gooddeeds/shared/design_system/utils/app_local_ext.dart';

class EventDetailsScreen extends StatelessWidget {
  const EventDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: context.loc.eventDetails),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: EventHeader(),
          ),
        ],
      ),
    );
  }
}
