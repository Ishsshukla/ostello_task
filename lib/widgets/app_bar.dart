import 'package:flutter/material.dart';
import 'package:ostello/constants/app_dimesnion.dart';

class CourseCurriculumAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback? onBack;

  const CourseCurriculumAppBar({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: AppDimensions.padding,
          vertical: AppDimensions.padding / 2,),
        child: Row(
          children: [
            
            InkWell(
              onTap: onBack ?? () => Navigator.pop(context),
              borderRadius: BorderRadius.circular(24),
              child: Container(
                  width: AppDimensions.progressSize,
                height: AppDimensions.progressSize,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E8FF), 
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xFF8A2BE2), 
                  size: 20,
                ),
              ),
            ),

            const SizedBox(width: AppDimensions.padding * 2.5),
            const Text(
              'Course Curriculum',
              style: TextStyle(
                fontFamily: 'Plus Jakarta Sans',
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
