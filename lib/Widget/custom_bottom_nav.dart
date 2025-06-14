import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const CustomBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  Widget _svgIcon(String path, {double size = 24}) {
    return SvgPicture.asset(path, height: size, width: size);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xFF161F28),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      currentIndex: selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(icon: _svgIcon('assets/icons/home.svg'), label: 'Home'),
        BottomNavigationBarItem(icon: _svgIcon('assets/icons/hugeicons_job-search.svg'), label: 'Jobs'),
        BottomNavigationBarItem(icon: _svgIcon('assets/icons/shop.svg'), label: 'Stores'),
        BottomNavigationBarItem(icon: _svgIcon('assets/icons/messages.svg'), label: 'Chats'),
        BottomNavigationBarItem(icon: _svgIcon('assets/icons/image.svg'), label: 'Profile'),
      ],
    );
  }
}
