// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../constants/color.dart';
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;
//
//    CustomBottomNavigationBar({
//     super.key,
//     required this.selectedIndex,
//     required this.onItemTapped,
//   });
//
//   Widget _profileIcon(String imagePath, {double width = 24, double height = 24}) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.white, width: 2),
//         borderRadius: BorderRadius.circular(6), // rounded corners
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(4), // slightly less to avoid overflow
//         child: Image.asset(
//           imagePath,
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
//
//   // Reusable method to return an SVG icon
//   Widget _svgIcon(String path, {double size = 24}) {
//     return SvgPicture.asset(
//       path,
//       width: size,
//       height: size,
//       color: selectedIndex >= 0 ? null : AppColors.iconColor,
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       backgroundColor: AppColors.navBarBackground,
//       selectedItemColor: AppColors.navBarSelected,
//       unselectedItemColor: AppColors.navBarUnselected,
//       currentIndex: selectedIndex,
//       type: BottomNavigationBarType.fixed,
//       onTap: onItemTapped,
//       selectedLabelStyle:  TextStyle(
//         fontFamily: 'Arial',
//         fontSize: 12,
//       ),
//       unselectedLabelStyle:  TextStyle(
//         fontFamily: 'Arial',
//         fontSize: 12,
//       ),
//       items: [
//         BottomNavigationBarItem(
//           icon: _svgIcon('assets/icons/home.svg'),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: _svgIcon('assets/icons/hugeicons_job-search.svg'),
//           label: 'Jobs',
//         ),
//         BottomNavigationBarItem(
//           icon: _svgIcon('assets/icons/shop.svg'),
//           label: 'Stores',
//         ),
//         BottomNavigationBarItem(
//           icon: _svgIcon('assets/icons/messages.svg'),
//           label: 'Chats',
//         ),
//         BottomNavigationBarItem(
//           icon: _profileIcon('assets/icons/lorem.png'), // PNG Image with border
//           label: 'Profile',
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/color.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  final List<Map<String, dynamic>> _items = [
    {
      'icon': 'assets/icons/home.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/hugeicons_job-search.svg',
      'label': 'Jobs',
    },
    {
      'icon': 'assets/icons/shop.svg',
      'label': 'Stores',
    },
    {
      'icon': 'assets/icons/messages.svg',
      'label': 'Chats',
    },
    {
      'icon': 'assets/icons/lorem.png',
      'label': 'Profile',
      'isImage': true,
    },
  ];

  Widget _svgIcon(String path, bool isSelected) {
    return SvgPicture.asset(
      path,
      width: isSelected ? 26 : 24,
      height: isSelected ? 26 : 24,
      color: isSelected ? Color(0xFF25BAFF) : AppColors.navBarUnselected,
    );
  }

  Widget _profileIcon(String path, bool isSelected) {
    return Container(
      width: isSelected ? 26 : 24,
      height: isSelected ? 26 : 24,
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? Color(0xFF25BAFF) : Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(path, fit: BoxFit.cover),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: AppColors.navBarBackground,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, -1),
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(_items.length, (index) {
          final item = _items[index];
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () => onItemTapped(index),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                item['isImage'] == true
                    ? _profileIcon(item['icon'], isSelected)
                    : _svgIcon(item['icon'], isSelected),
                const SizedBox(height: 4),
                Text(
                  item['label'],
                  style: TextStyle(
                    color: isSelected ? Color(0xFF25BAFF) : AppColors.navBarUnselected,
                    fontSize: 12,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 6),
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: isSelected ? 4 : 0,
                  width: isSelected ? 60 : 0,
                  decoration: BoxDecoration(
                    color: Color(0xFF25BAFF),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}

