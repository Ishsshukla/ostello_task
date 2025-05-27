import 'package:flutter/material.dart';
import 'package:ostello/constants/app_dimesnion.dart';

class CompactCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const CompactCard({
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
          borderRadius:
              BorderRadius.circular(AppDimensions.cardRadius * 0.75), 
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
            Icon(
              Icons.play_circle_fill,
              color: Colors.purple,
              size: AppDimensions.progressSize, 
            ),
            const SizedBox(width: AppDimensions.padding * 0.75), 
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Plus Jakarta Sans',
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: AppDimensions.padding / 4), 
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "6h 30min",
              style: TextStyle(
                fontSize: 12,
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
