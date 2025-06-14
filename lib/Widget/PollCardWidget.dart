// lib/widgets/poll_card_widget.dart
import 'package:bluecs_in_assignment/Widget/second_custom_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/color.dart';
import 'poll_option_widget.dart';
import 'custom_row_widget.dart';

class PollCardWidget extends StatelessWidget {
   PollCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        // Poll Card Container
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
          padding:  EdgeInsets.symmetric(horizontal: 14, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top row: time + views
              Row(
                children:  [
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

               SizedBox(height: 8),

              // Poll question
               Text(
                "What is the most important factor when choosing a new job?",
                style: TextStyle(
                  color: AppColors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  fontFamily: 'Arial',
                ),
              ),

               SizedBox(height: 6),

              // Poll options
               Column(
                children: [
                  PollOptionWidget(label: "A.", title: "Salary & Benefits", isSelected: true),
                  PollOptionWidget(label: "B.", title: "Work-Life Balance",),
                  PollOptionWidget(label: "C.", title: "Career Growth Opportunities"),
                  PollOptionWidget(label: "D.", title: "Company Culture"),
                ],
              ),

               SizedBox(height: 8 ),

              // User info row
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: AppColors.avatarBg,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/icons/lorem.png',
                        width: 42,
                        height: 42,
                      ),
                    ),
                  ),
                   SizedBox(width: 12),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'TechSavvy',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Arial',
                        ),
                      ),
                      Text(
                        'Content Creator',
                        style: TextStyle(
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
            ],
          ),
        ),

        // Bottom row with avatars, likes, shares, etc.
        Positioned(
          bottom: -24,
          left: (358 - 330) / 2,
          child:  SecondCustomRowWidget(),
        ),
      ],
    );
  }
}
