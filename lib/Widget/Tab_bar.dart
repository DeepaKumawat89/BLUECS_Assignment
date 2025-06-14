import 'package:flutter/material.dart';

import '../constants/color.dart';

class CustomTab extends StatelessWidget {
  final List<String> tabs;
  final int selectedTabIndex;
  final Function(int) onTabSelected;

  const CustomTab({
    super.key,
    required this.tabs,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.tabBarBackground,
      padding:  EdgeInsets.symmetric(vertical: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics:  BouncingScrollPhysics(),
        child: Row(
          children: List.generate(tabs.length, (index) {
            final bool isSelected = selectedTabIndex == index;

            return Padding(
              padding: EdgeInsets.only(left: index == 0 ? 16 : 10),
              child: GestureDetector(
                onTap: () => onTabSelected(index),
                child: AnimatedContainer(
                  duration:  Duration(milliseconds: 170),
                  padding:  EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.tabSelectedColor
                        : Colors.transparent,
                    border: Border.all(
                      color: isSelected
                          ? AppColors.tabBorderSelected
                          : AppColors.tabBorderUnselected,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Text(
                    tabs[index],
                    style:  TextStyle(
                      fontFamily: 'Arial',
                      color: AppColors.textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
