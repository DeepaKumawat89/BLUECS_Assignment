// Widget/custom_row_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

class CustomRowWidget extends StatelessWidget {
  const CustomRowWidget({super.key});

  Widget _rotatedText(String text) => Transform.rotate(
    angle: 0.55 * math.pi / 180,
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.3,
      ),
    ),
  );

  Widget _svgCircle(String path) => Container(
    width: 22,
    height: 22,
    padding: const EdgeInsets.all(3),
    decoration: BoxDecoration(
      border: Border.all(width: 1, color: Colors.white),
      shape: BoxShape.circle,
    ),
    child: SvgPicture.asset(path, width: 16, height: 16, color: Colors.white),
  );

  Widget _divider() => Container(
    width: 1,
    height: 20,
    color: Colors.white,
    // margin: const EdgeInsets.symmetric(horizontal: 10),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 48,
      // padding: const EdgeInsets.symmetric(horizontal: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 0.6, color: Colors.white24),
        color: const Color(0xFF161F28CC),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // First Segment
          Row(
            children: [
              SvgPicture.asset('assets/icons/result.svg',
                  width: 20, height: 20, color: Colors.white),
              _rotatedText('310'),
              SvgPicture.asset('assets/icons/Comment.svg',
                  width: 20, height: 20, color: Colors.white),
            ],
          ),

          _divider(),

          // Second Segment
          Row(
            children: [
              SvgPicture.asset('assets/icons/Group 1321318638.svg',
                  width: 22, height: 22),
              _rotatedText('5k+'),
              SvgPicture.asset('assets/icons/Like.svg',
                  width: 22, height: 22,color: Colors.white,),
            ],
          ),

          _divider(),

          // Third Segment
          Row(
            children: [
              _rotatedText('50'),
              SvgPicture.asset('assets/icons/mdi-light_share.svg',
                width: 22, height: 22,color: Colors.white,),
            ],
          ),
        ],
      ),
    );
  }
}
