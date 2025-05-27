
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
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.padding,
            vertical: AppDimensions.paddingSmall,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: AppDimensions.iconSizeLarge,
                height: AppDimensions.iconSizeLarge,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: AppDimensions.paddingSmall),

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
        SizedBox(height: AppDimensions.paddingSmall),
        SizedBox(
          height: AppDimensions.imageHeight + AppDimensions.paddingSmall * 2,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppDimensions.padding),
            itemBuilder: (context, index) {
              final item = dummyData[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
                    child: Image.asset(
                      item['image'],
                      width: AppDimensions.imageWidth,
                      height: AppDimensions.imageHeight,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: AppDimensions.paddingSmall),
                ],
              );
            },
            separatorBuilder: (_, __) => SizedBox(width: AppDimensions.paddingSmall),
            itemCount: dummyData.length,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppDimensions.paddingSmall),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
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
              CircularPercentIndicator(
                radius: AppDimensions.iconSizeLarge,
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
              SizedBox(width: AppDimensions.paddingSmall),
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
                    SizedBox(height: AppDimensions.paddingExtraSmall),
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
              Row(
                children: [
                  const Icon(Icons.access_time, size: 16, color: Colors.grey),
                  SizedBox(width: AppDimensions.paddingExtraSmall),
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
        SizedBox(height: AppDimensions.paddingSmall),
        CompactCard(
          title: "Welcome & Roadmap",
          subtitle: "Get started with Stella!",
        ),
        CompactCard(
          title: "Welcome & Roadmap",
          subtitle: "Get started with Stella!",
        ),
        CompactCard(
          title: "Welcome & Roadmap",
          subtitle: "Get started with Stella!",
        ),
      ],
    );
  }
}
