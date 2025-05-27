import 'package:flutter/material.dart';
import 'package:ostello/widgets/app_bar.dart';
import 'package:ostello/widgets/circular_progress_card.dart';
import 'package:ostello/widgets/compact_card_icon.dart';
import 'package:ostello/widgets/horizontal_card.dart';

class CourseScreen extends StatefulWidget {
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isExpanded = true;

  void toggleExpand(bool value) {
    setState(() {
      isExpanded = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CourseCurriculumAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              WeeklyProgressCard(),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: isExpanded
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HorizontalCardList(
                              onCollapse: () => toggleExpand(false)),
                        ],
                      )
                    : CompactCardIcon(
                        title: "Welcome & Roadmap",
                        subtitle: "Get started with Stella!",
                        onExpand: () => toggleExpand(true),
                        isActive: true, // Set to true for active state
                      ),
              ),
              CompactCardIcon(
                title: "Start Speaking: From Zero to Basic",
                subtitle: "Get started with Stella!",
                onExpand: () {},
                isActive: true, // Set to true for active state
              ),
              CompactCardIcon(
                title: "Welcome & Roadmap",
                subtitle: "Subscribe to Unlock",
                onExpand: () {},
                isActive: false, // Set to true for active state
              ),
              CompactCardIcon(
                title: "Welcome & Roadmap",
                subtitle: "Subscribe to Unlock",
                onExpand: () {},
                isActive: false, // Set to true for active state
              ),
              CompactCardIcon(
                title: "Welcome & Roadmap",
                subtitle: "Subscribe to Unlock",
                onExpand: () {},
                isActive: false, // Set to true for active state
              ),
            ],
          ),
        ),
      ),
    );
  }
}
