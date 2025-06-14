import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/color.dart'; // Import the color ants

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
   CustomAppBar({super.key});

  // Helper method to build SVG icons
  Widget _svgIcon(String path, {double size = 24}) {
    return SvgPicture.asset(
      path,
      width: size,
      height: size,
    );
  }

  // Helper method to build the search bar
  Widget _buildSearchBar() {
    return Container(
      height: 40,
      padding:  EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: AppColors.searchBarBackground,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children:  [
          Icon(Icons.search, color: AppColors.hintTextColor, size: 25),
          SizedBox(width: 4),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search here...',
                hintStyle: TextStyle(
                  color: AppColors.hintTextColor,
                  fontFamily: 'Arial',
                  fontSize: 14
                ),
                border: InputBorder.none,
                isDense: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBarBackground,
      toolbarHeight: preferredSize.height,
      elevation: 0,
      titleSpacing: 0,
      title: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            _svgIcon('assets/icons/frame.svg', size: 24),
             SizedBox(width: 10),
            Expanded(child: _buildSearchBar()),
             SizedBox(width: 8),
            _svgIcon('assets/icons/map-73.svg', size: 30),
             SizedBox(width: 10),
            _svgIcon('assets/icons/notification.svg', size: 24),
          ],
        ),
      ),
    );
  }

  // Preferred size for the custom AppBar
  @override
  Size get preferredSize =>  Size.fromHeight(70);
}
