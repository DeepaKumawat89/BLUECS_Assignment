// lib/widgets/post_card_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/color.dart';
import 'custom_row_widget.dart';
import 'image_overlay_with_dots.dart';

class PostCardWidget extends StatelessWidget {
  final Map<String, String> data;

  const PostCardWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Main Card Container
          Container(
            width: 358,
            height: 430,
            margin:  EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.cardBackground,
              borderRadius: BorderRadius.circular(10),
              border: Border(
                left: BorderSide(color: AppColors.blackBorder, width: 1),
                right: BorderSide(color: AppColors.blackBorder, width: 1),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image with dots overlay
                ImageWithOverlay(imagePath: data['image']!),

                 SizedBox(height: 8),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Post Time and Views
                      Row(
                        children: [
                           Text(
                            "5 days ago",
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontSize: 10,
                              fontFamily: 'Arial',
                            ),
                          ),
                           Spacer(),
                          SvgPicture.asset(
                            'assets/icons/lets-icons_view-alt.svg',
                            width: 24,
                            height: 24,
                            color: AppColors.primaryBlue,
                          ),
                           SizedBox(width: 4),
                           Text(
                            "25k",
                            style: TextStyle(
                              color: AppColors.primaryBlue,
                              fontSize: 10,
                              fontFamily: 'Arial',
                            ),
                          ),
                        ],
                      ),

                       SizedBox(height: 2),

                      // Title
                      Text(
                        data['title']!,
                        style:  TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: 'Arial',
                        ),
                      ),

                       SizedBox(height: 4),

                      // Subtitle
                      Text(
                        data['subtitle']!,
                        style:  TextStyle(
                          color: AppColors.white,
                          fontSize: 12,
                          fontFamily: 'Arial',
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                       SizedBox(height: 8),

                      // Author Info Row
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: AppColors.white10,
                            child: ClipOval(
                              child: Image.asset(
                                'assets/icons/lorem.png',
                                width: 42,
                                height: 42,
                              ),
                            ),
                          ),
                           SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data['author']!,
                                style:  TextStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Arial',
                                ),
                              ),
                              Text(
                                data['role']!,
                                style:  TextStyle(
                                  color: AppColors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Arial',
                                ),
                              ),
                            ],
                          ),
                           Spacer(),
                          SvgPicture.asset(
                            'assets/icons/block.svg',
                            width: 24,
                            height: 24,
                            color: AppColors.errorRed,
                          ),
                        ],
                      ),
                       SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Positioned Bottom Row Widget
           Positioned(
            bottom: -24,
            left: (358 - 330) / 2,
            child: CustomRowWidget(),
          ),
        ],
      ),
    );
  }
}
