import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/color.dart';

class SecondCustomRowWidget extends StatelessWidget {
  const  SecondCustomRowWidget({super.key});


  // Common text style for labels
  static const TextStyle _textStyle = TextStyle(
    fontFamily: 'Arial',
    color: AppColors.textColor,
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.3,
  );

  // Reusable divider between segments
  Widget _divider() => Container(
    width: 1,
    height: 20,
    color: AppColors.dividerColor,
  );

  // Avatar Stack (4 avatars)
  Widget _buildAvatarStack() {
    return SizedBox(
      width: 52,
      height: 22,
      child: Stack(
        children: List.generate(4, (index) {
          return Positioned(
            left: index * 10.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.textColor, width: 1),
              ),
              child: CircleAvatar(
                radius: 10,
                backgroundImage: AssetImage('assets/profileimages/p${index + 1}.png'),
              ),
            ),
          );
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 48,
      padding:  EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.rowBackground,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(width: 0.6, color: AppColors.rowBorder),
        boxShadow:  [
          BoxShadow(
            color: AppColors.shadowColor,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //  Group Icon + Like Count + Icon

          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/Group 1321318638.svg',
                width: 22,
                height: 22,
              ),
              SizedBox(width: 2),
              Text('5k+', style: _textStyle),
              SizedBox(width: 2),
              SvgPicture.asset(
                'assets/icons/Like.svg',
                width: 24,
                height: 24,
                color: AppColors.iconColor,
              ),
            ],
          ),

          _divider(),

          //  Avatars + Comment Count + Icon

          Row(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 4),
                child: _buildAvatarStack(),
              ),
              SizedBox(width: 2),
              Text('310', style: _textStyle),
              SizedBox(width: 2),
              SvgPicture.asset(
                'assets/icons/Comment.svg',
                width: 24,
                height: 24,
                color: AppColors.iconColor,
              ),
            ],
          ),

          _divider(),

          // Share Count + Share Icon
          Row(
            children: [
              Text('50', style: _textStyle),
              SizedBox(width: 1),
              SvgPicture.asset(
                'assets/icons/mdi-light_share.svg',
                width: 24,
                height: 24,
                color: AppColors.iconColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
