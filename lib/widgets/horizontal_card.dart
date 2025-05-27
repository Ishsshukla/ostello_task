import 'package:flutter/material.dart';
import 'package:ostello/widgets/compact_card.dart';
import 'package:ostello/widgets/compact_card_progress.dart';
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.5), 
            width: 1.0, 
          ),
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius),
        ),
        child: Column(
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
                          'Welcome & Roadmap',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Plus Jakarta Sans',
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
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
                      size: 24,
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

            SizedBox(
              height:
                  AppDimensions.imageHeight + AppDimensions.paddingSmall * 2,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.padding),
                itemBuilder: (context, index) {
                  final item = dummyData[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          item['image'],
                          width: 113,
                          height: 174,
                          fit: BoxFit.cover,
                        ),
                      ),
                  
                    ],
                  );
                },
                separatorBuilder: (_, __) =>
                    SizedBox(width: AppDimensions.paddingSmall),
                itemCount: dummyData.length,
              ),
            ),
            SizedBox(height: AppDimensions.paddingSmall),
            
            CompactCardProgress(
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
            CompactCard(
              title: "Welcome & Roadmap",
              subtitle: "Get started with Stella!",
            ),
          ],
        ),
      ),
    );
  }
}
