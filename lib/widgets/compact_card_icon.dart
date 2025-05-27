import 'package:flutter/material.dart';
import 'package:ostello/constants/app_color.dart';
import 'package:ostello/constants/app_dimesnion.dart';

class CompactCardIcon extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onExpand;
  final bool isActive;

  const CompactCardIcon({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onExpand,
    required this.isActive,
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
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
            width: 1,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppDimensions.cardRadius * 0.75),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            isActive
                ? Icon(
                    Icons.play_circle_fill,
                    color: AppColors.primary,
                    size: AppDimensions.progressSize,
                  )
                : Image.asset(
                    'assets/images/button.png',
                    width: AppDimensions.progressSize,
                    height: AppDimensions.progressSize,
                  ),
            const SizedBox(width: AppDimensions.padding * 0.75),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: isActive ? Colors.black : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.padding / 4),
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.expand_more),
              iconSize: AppDimensions.progressSize * 0.75,
              onPressed: onExpand,
            ),
          ],
        ),
      ),
    );
  }
}
