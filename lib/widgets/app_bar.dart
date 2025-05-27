import 'package:flutter/material.dart';

class CourseCurriculumAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback? onBack;

  const CourseCurriculumAppBar({super.key, this.onBack});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            // Back button with purple background
            InkWell(
              onTap: onBack ?? () => Navigator.pop(context),
              borderRadius: BorderRadius.circular(24),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xFFF3E8FF), // Light purple background
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color(0xFF8A2BE2), // Deep purple arrow
                  size: 20,
                ),
              ),
            ),

            const SizedBox(width: 40),

            // Title centered vertically
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
