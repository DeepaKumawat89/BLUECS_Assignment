import 'package:flutter/material.dart';

class CapsuleTabBar extends StatelessWidget {
  final List<String> tabs;
  final int selectedTabIndex;
  final Function(int) onTabSelected;

  const CapsuleTabBar({
    super.key,
    required this.tabs,
    required this.selectedTabIndex,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF23313F),
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: List.generate(tabs.length, (i) {
            final bool selected = selectedTabIndex == i;
            return Padding(
              padding: EdgeInsets.only(left: i == 0 ? 16 : 10),
              child: GestureDetector(
                onTap: () => onTabSelected(i),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 170),
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  decoration: BoxDecoration(
                    color: selected
                        ? const Color(0xFF233143)
                        : Colors.transparent,
                    border: Border.all(
                      color: selected
                          ? const Color(0xFF23A9F9)
                          : Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Text(
                    tabs[i],
                    style: const TextStyle(
                      color: Colors.white,
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
