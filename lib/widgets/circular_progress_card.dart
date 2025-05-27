import 'package:flutter/material.dart';
import 'package:ostello/constants/app_color.dart';
import 'package:ostello/constants/app_dimesnion.dart';
import 'package:ostello/constants/app_text_style.dart';
import 'package:percent_indicator/percent_indicator.dart';

class WeeklyProgressCard extends StatelessWidget {
  const WeeklyProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(AppDimensions.padding),
        padding: const EdgeInsets.all(AppDimensions.padding * 1.25),
        decoration: BoxDecoration(
          color: const Color(0xFF7D23E0),
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius * 1.5),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Weekly progress',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Plus Jakarta Sans',
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '80% completed',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Plus Jakarta Sans',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.padding * 0.75),
            ClipRRect(
              borderRadius: BorderRadius.circular(AppDimensions.cardRadius / 2),
              child: LinearProgressIndicator(
                value: 0.8,
                minHeight: AppDimensions.progressSize / 5,
                backgroundColor: Colors.white.withOpacity(0.3),
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
            const SizedBox(height: AppDimensions.padding * 1.5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/girl.png',
                  width: AppDimensions.progressSize * 0.8, // 32 = 40 * 0.8
                  height: AppDimensions.progressSize * 0.8,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: AppDimensions.padding * 0.75),
                Expanded(
                  child: Text(
                    'Speak confidently–\nachieve your goals today!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Plus Jakarta Sans',
                      color: Colors.white,
                      height: 1.4,
                    ),
                  ),
                ),
                const SizedBox(width: AppDimensions.padding * 0.75),
                CircleAvatar(
                  radius: AppDimensions.playButtonSize / 2,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.play_arrow,
                    color: const Color(0xFF7D23E0),
                    size: AppDimensions.playButtonSize * 0.56,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppDimensions.padding * 1.5),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(AppDimensions.cardRadius * 1.5),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.padding * 0.625,
                vertical: AppDimensions.padding * 0.75,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Buy this Course',
                    style: TextStyle(
                      color: const Color(0xFF7D23E0),
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                  const SizedBox(width: AppDimensions.padding * 0.5),
                  Icon(
                    Icons.arrow_forward,
                    color: const Color(0xFF7D23E0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
