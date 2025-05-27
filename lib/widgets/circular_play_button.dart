import 'package:flutter/material.dart';

class CustomPlayButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomPlayButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.play_circle_fill, size: 40, color: Colors.white),
      onPressed: onPressed,
    );
  }
}
