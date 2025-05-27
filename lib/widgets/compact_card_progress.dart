import 'package:flutter/material.dart';
import 'package:ostello/constants/app_dimesnion.dart';
import 'package:ostello/constants/app_text_style.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CompactCardProgress extends StatelessWidget {
  final String title;
  final String subtitle;

  const CompactCardProgress({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.padding,
        vertical: AppDimensions.padding / 2,
      ),
      child: Container(
        padding: const EdgeInsets.all(AppDimensions.padding * 0.75),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius * 0.75),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), 
              blurRadius: 6, 
              offset: const Offset(0, 3), 
            ),
          ],
        ),
        child: Row(
          children: [
            CircularPercentIndicator(
              radius: 28,
              lineWidth: 5,
              percent: 0.2,
              animation: true,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "1 of 4",
                    style: AppTextStyles.smallText.copyWith(
                        fontSize: 8,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "20%",
                    style: AppTextStyles.boldText.copyWith(
                        fontSize: 10,
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              progressColor: const Color(0xFF0043CE),
              backgroundColor: const Color(0xFFD0E2FF),
              circularStrokeCap: CircularStrokeCap.round,
            ),
            const SizedBox(width: AppDimensions.padding * 0.75),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.padding / 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppDimensions.padding * 0.75),
            const Icon(Icons.access_time, size: 14, color: Colors.grey),
            const SizedBox(width: AppDimensions.padding / 4),
            const Text(
              "6h 30min",
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
    );
  }
}
