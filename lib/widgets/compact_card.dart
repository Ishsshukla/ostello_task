import 'package:flutter/material.dart';

class CompactCard extends StatelessWidget {
  final String title;
  final String subtitle;
  // final VoidCallback onExpand;

  const CompactCard({
    required this.title,
    required this.subtitle,
    // required this.onExpand,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
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
            const Icon(Icons.play_circle_fill, color: Colors.purple, size: 40),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Plus Jakarta Sans',
                    ),
                  ),
                  const SizedBox(height: 4),
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
            // IconButton(
            //   icon: const Icon(Icons.expand_more),
            //   onPressed: onExpand,
            // ),
          ],
        ),
      ),
    );
  }
}
