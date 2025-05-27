import 'package:flutter/material.dart';
import 'package:ostello/widgets/compact_card.dart';
import 'package:ostello/widgets/section_tile.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ostello/constants/app_color.dart';
import 'package:ostello/constants/app_dimesnion.dart';
import 'package:ostello/constants/app_text_style.dart';
import 'package:ostello/data/dummy_class_data.dart';
import 'package:ostello/data/dummy_course_data.dart';

class HorizontalCardList extends StatefulWidget {
  final VoidCallback onCollapse;

  const HorizontalCardList({
    super.key,
    required this.onCollapse,
  });

  @override
  State<HorizontalCardList> createState() => _HorizontalCardListState();
}

class _HorizontalCardListState extends State<HorizontalCardList> {
  void onArrowTap() {
    widget.onCollapse();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Purple Play Button
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0xFF8A2BE2), // Purple
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 12),

              // Title and Subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Start Speaking: From Zero to Basic',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ],
                ),
              ),

              // Arrow Icon (Clickable)
              GestureDetector(
                onTap: onArrowTap,
                child: const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            SectionTitle(title: "Exclusive Reels"),
          ],
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: AppDimensions.imageHeight + 30,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.symmetric(horizontal: AppDimensions.padding),
            itemBuilder: (context, index) {
              final item = dummyData[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // The Image Card
                  ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppDimensions.cardRadius),
                    child: Image.asset(
                      item['image'],
                      width: AppDimensions.imageWidth,
                      height: AppDimensions.imageHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // The Lesson Card
                ],
              );
            },
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemCount: dummyData.length,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              // Circular Progress with Text inside
              CircularPercentIndicator(
                radius: 24,
                lineWidth: 5,
                percent: 0.2,
                animation: true,
                center: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "1 of 4",
                      style: AppTextStyles.smallText.copyWith(
                        fontSize: 10,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    Text(
                      "20%",
                      style: AppTextStyles.boldText.copyWith(
                        fontSize: 12,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ],
                ),
                progressColor: AppColors.primary,
                backgroundColor: AppColors.progressBackground,
                circularStrokeCap: CircularStrokeCap.round,
              ),
              const SizedBox(width: 12),
              // Title & Subtitle
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome & Roadmap",
                      style: AppTextStyles.boldText.copyWith(
                        fontSize: 14,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Get start with Stella!",
                      style: AppTextStyles.smallText.copyWith(
                        color: Colors.grey,
                        fontFamily: 'Plus Jakarta Sans',
                      ),
                    ),
                  ],
                ),
              ),
              // Duration
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    "6h 30min",
                    style: AppTextStyles.smallText.copyWith(
                      color: Colors.grey,
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        CompactCard(
          title: "Welcome & Roadmap",
          subtitle: "Get started with Stella!",
          // onExpand: () => toggleExpand(true),
        ),
        CompactCard(
          title: "Welcome & Roadmap",
          subtitle: "Get started with Stella!",
          // onExpand: () => toggleExpand(true),
        ),
        CompactCard(
          title: "Welcome & Roadmap",
          subtitle: "Get started with Stella!",
          // onExpand: () => toggleExpand(true),
        ),
      ],
    );
  }
}
