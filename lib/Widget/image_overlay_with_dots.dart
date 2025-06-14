import 'package:flutter/material.dart';

class ImageWithOverlay extends StatelessWidget {
  final String imagePath;

  const ImageWithOverlay({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Main image with rounded top corners
        ClipRRect(
          borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: Image.asset(
            imagePath,
            width: 358,
            height: 243,
            fit: BoxFit.cover,
          ),
        ),

        // Carousel indicator dots (3)
        Positioned(
          bottom: 8,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                width: 10,
                height: 10,
                margin:  EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == 0 ? Colors.white : Colors.white38,
                ),
              );
            }),
          ),
        ),

        // Bottom right overlay with an icon
        Positioned(
          bottom: 10,
          right: 10,
          child: Container(
            width: 56,
            height: 34,
            padding:  EdgeInsets.symmetric(horizontal: 9, vertical: 5),
            decoration: BoxDecoration(
              color:  Color(0xCC161F28),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                'assets/images/uil_language.png',
                width: 20,
                height: 20,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
