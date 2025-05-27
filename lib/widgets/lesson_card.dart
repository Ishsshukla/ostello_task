
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:ostello/constants/app_dimesnion.dart'; 

class LessonCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double progress;
  final String countText;
  final String duration;

  const LessonCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.countText,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: AppDimensions.padding,
        vertical: AppDimensions.paddingSmall,
      ),
      padding: const EdgeInsets.all(AppDimensions.padding),
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
          // Progress Indicator
          CircularPercentIndicator(
            radius: AppDimensions.progressSize,
            lineWidth: 6,
            percent: progress,
            animation: true,
            center: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  countText,
                  style: const TextStyle(
                    fontSize: AppDimensions.fontSizeSmall,
                    color: Colors.black54,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                Text(
                  '${(progress * 100).toInt()}%',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimensions.fontSizeMedium,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
              ],
            ),
            progressColor: Colors.blue,
            backgroundColor: Colors.blue.shade100,
            circularStrokeCap: CircularStrokeCap.round,
          ),

          const SizedBox(width: AppDimensions.padding),

  
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: AppDimensions.fontSizeLarge,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
                const SizedBox(height: AppDimensions.paddingExtraSmall),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: AppDimensions.fontSizeMedium,
                    color: Colors.grey,
                    fontFamily: 'Plus Jakarta Sans',
                  ),
                ),
              ],
            ),
          ),

          
          Row(
            children: [
              const Icon(
                Icons.access_time,
                size: AppDimensions.iconSizeSmall,
                color: Colors.grey,
              ),
              const SizedBox(width: AppDimensions.paddingExtraSmall),
              Text(
                duration,
                style: const TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Plus Jakarta Sans',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
