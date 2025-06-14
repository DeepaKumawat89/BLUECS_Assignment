// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'dart:math' as math;
//
// import 'Widget/Tab_bar.dart';
// import 'Widget/custom_bottom_nav.dart';
// import 'Widget/custom_row_widget.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   Widget _svgIcon(String path, {double size = 24}) {
//     return SvgPicture.asset(path, height: size, width: size);
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final List<Widget> pages = [
//       SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Stack(
//               clipBehavior: Clip.none,
//               children: [
//                 Container(
//                   width: 358,
//                   height: 430,
//                   margin: const EdgeInsets.symmetric(vertical: 10),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFF1C252D),
//                     borderRadius: BorderRadius.circular(10),
//                     border: const Border(
//                       left: BorderSide(color: Colors.white12, width: 1),
//                       right: BorderSide(color: Colors.white12, width: 1),
//                     ),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           topRight: Radius.circular(10),
//                         ),
//                         child: Image.asset(
//                           'assets/icons/AI.jpg',
//                           width: 358,
//                           height: 215, // top half only
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(height: 12),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 14),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             const Row(
//                               children: [
//                                 Text("5 days ago", style: TextStyle(color: Colors.white60, fontSize: 13)),
//                                 Spacer(),
//                                 Icon(Icons.remove_red_eye, color: Colors.white24, size: 18),
//                                 SizedBox(width: 4),
//                                 Text("25k", style: TextStyle(color: Colors.white38, fontSize: 13)),
//                               ],
//                             ),
//                             const SizedBox(height: 7),
//                             const Text(
//                               "Top 10 AI Tools You Should Know in 2025",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 17,
//                               ),
//                             ),
//                             const SizedBox(height: 4),
//                             Text(
//                               "Stay Ahead with These Game-Changing AI Tools",
//                               style: TextStyle(color: Colors.white, fontSize: 12),
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                             const SizedBox(height: 14),
//                             Row(
//                               children: [
//                                 // SVG on the left
//                                 CircleAvatar(
//                                   radius: 20,
//                                   backgroundColor: Colors.white10,
//                                   child: ClipOval(
//                                     child: Image.asset(
//                                       'assets/icons/lorem.png', // Replace with your PNG path
//                                       width: 42,
//                                       height: 42,
//                                     ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 8),
//
//                                 // Name and subtitle column
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: const [
//                                     Text(
//                                       "TechSavvy",
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.w700,
//                                       ),
//                                     ),
//                                     SizedBox(height: 2),
//                                     Text(
//                                       "Content Creator", // or any subtitle
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w400,
//                                         fontSize: 10,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//
//                                 const Spacer(),
//                                 // SVG on the right
//                                 SvgPicture.asset(
//                                   'assets/icons/block.svg', // replace with your asset
//                                   width: 20,
//                                   height: 20,
//                                   color: Colors.redAccent,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 20),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   bottom: -24,
//                   left: (358 - 325) / 2,
//                   child:  CustomRowWidget(),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 40), // space after custom row
//           ],
//         ),
//       ),
//
//       const Center(child: Text('Search Page', style: TextStyle(color: Colors.white))),
//       const Center(child: Text('Add Page', style: TextStyle(color: Colors.white))),
//       const Center(child: Text('Alerts Page', style: TextStyle(color: Colors.white))),
//       const Center(child: Text('Profile Page', style: TextStyle(color: Colors.white))),
//     ];
//
//     return Scaffold(
//       backgroundColor: const Color(0xFF23313F),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF161F28),
//         toolbarHeight: 70,
//         title: Row(
//           children: [
//             _svgIcon('assets/icons/frame.svg', size: 28),
//             const SizedBox(width: 10),
//             Expanded(
//               child: Container(
//                 height: 40,
//                 padding: const EdgeInsets.symmetric(horizontal: 12),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF23313F),
//                   borderRadius: BorderRadius.circular(25),
//                 ),
//                 child: Row(
//                   children: const [
//                     Icon(Icons.search, color: Colors.white70, size: 20),
//                     SizedBox(width: 8),
//                     Expanded(
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                           hintText: 'Search',
//                           hintStyle: TextStyle(color: Colors.white70),
//                           border: InputBorder.none,
//                           isDense: true,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(width: 10),
//             _svgIcon('assets/icons/map-73.svg', size: 28),
//             const SizedBox(width: 16),
//             _svgIcon('assets/icons/notification.svg', size: 28),
//           ],
//         ),
//       ),
//       body: Column(
//         children: [
//           CapsuleTabBar(
//             tabs: ['All Posts', 'Videos', 'Short Videos', 'Nearby'],
//             selectedTabIndex: _selectedIndex,
//             onTabSelected: _onItemTapped,
//           ),
//           Expanded(child: pages[_selectedIndex]),
//         ],
//       ),
//       bottomNavigationBar: CustomBottomNavigationBar(
//         selectedIndex: _selectedIndex,
//         onItemTapped: _onItemTapped,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:math' as math;

import 'Widget/Tab_bar.dart';
import 'Widget/custom_bottom_nav.dart';
import 'Widget/custom_row_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _svgIcon(String path, {double size = 24}) {
    return SvgPicture.asset(path, height: size, width: size);
  }

  final List<Map<String, String>> dummyData = [
    {
      'image': 'assets/icons/AI.jpg',
      'title': 'Top 10 AI Tools You Should Know in 2025',
      'subtitle': 'Stay Ahead with These Game-Changing AI Tools',
      'author': 'TechSavvy',
      'role': 'Content Creator',
    },
    {
      'image': 'assets/icons/AI.jpg',
      'title': 'Future of Flutter Development',
      'subtitle': 'What to expect in the next version',
      'author': 'DevGuru',
      'role': 'Mobile Dev',
    },
    {
      'image': 'assets/icons/AI.jpg',
      'title': 'Design Trends of 2025',
      'subtitle': 'UI/UX predictions for the future',
      'author': 'UXMaster',
      'role': 'Designer',
    },
    {
      'image': 'assets/icons/AI.jpg',
      'title': 'How to Stay Productive as a Developer',
      'subtitle': 'Top tools and tips',
      'author': 'CodeNinja',
      'role': 'Productivity Coach',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            for (var data in dummyData) ...[
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 358,
                    height: 430,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1C252D),
                      borderRadius: BorderRadius.circular(10),
                      border: const Border(
                        left: BorderSide(color: Colors.white12, width: 1),
                        right: BorderSide(color: Colors.white12, width: 1),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            data['image']!,
                            width: 358,
                            height: 215,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text("5 days ago",
                                      style: TextStyle(
                                          color: Colors.white60, fontSize: 13)),
                                  Spacer(),
                                  Icon(Icons.remove_red_eye,
                                      color: Colors.white24, size: 18),
                                  SizedBox(width: 4),
                                  Text("25k",
                                      style: TextStyle(
                                          color: Colors.white38, fontSize: 13)),
                                ],
                              ),
                              const SizedBox(height: 7),
                              Text(
                                data['title']!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                data['subtitle']!,
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 14),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.white10,
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/icons/lorem.png',
                                        width: 42,
                                        height: 42,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data['author']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const SizedBox(height: 2),
                                      Text(
                                        data['role']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  SvgPicture.asset(
                                    'assets/icons/block.svg',
                                    width: 20,
                                    height: 20,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -24,
                    left: (358 - 325) / 2,
                    child: const CustomRowWidget(),
                  ),
                ],
              ),
              const SizedBox(height: 40),
            ],

            // 👇 Optional Additional Page or Section
            Container(
              width: 358,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                color: const Color(0xFF2B3A47),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Thanks for exploring the feed!',
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
      const Center(child: Text('Search Page', style: TextStyle(color: Colors.white))),
      const Center(child: Text('Add Page', style: TextStyle(color: Colors.white))),
      const Center(child: Text('Alerts Page', style: TextStyle(color: Colors.white))),
      const Center(child: Text('Profile Page', style: TextStyle(color: Colors.white))),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF23313F),
      appBar: AppBar(
        backgroundColor: const Color(0xFF161F28),
        toolbarHeight: 70,
        title: Row(
          children: [
            _svgIcon('assets/icons/frame.svg', size: 28),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFF23313F),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.search, color: Colors.white70, size: 20),
                    SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 10),
            _svgIcon('assets/icons/map-73.svg', size: 28),
            const SizedBox(width: 16),
            _svgIcon('assets/icons/notification.svg', size: 28),
          ],
        ),
      ),
      body: Column(
        children: [
          CapsuleTabBar(
            tabs: ['All Posts', 'Videos', 'Short Videos', 'Nearby'],
            selectedTabIndex: _selectedIndex,
            onTabSelected: _onItemTapped,
          ),
          Expanded(child: pages[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}


