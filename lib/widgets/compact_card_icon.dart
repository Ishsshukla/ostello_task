import 'package:flutter/material.dart';

class CompactCardIcon extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onExpand;
  final bool isActive; // Optional: Track if the card is active

  const CompactCardIcon({
    required this.title,
    required this.subtitle,
    required this.onExpand,
    required this.isActive,
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
            isActive
                ? const Icon(Icons.play_circle_fill,
                    color: Colors.purple, size: 40)
                : Image.asset(
                    'assets/images/button.png',
                    width: 40,
                    height: 40,
                  ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: isActive ? Colors.black : Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(subtitle,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey)),
                ],
              ),
            ),
            // const Text("6h 30min", style: TextStyle(fontSize: 12, color: Colors.grey)),
            IconButton(
              icon: const Icon(Icons.expand_more),
              onPressed: onExpand,
            ),
          ],
        ),
      ),
    );
  }
}
