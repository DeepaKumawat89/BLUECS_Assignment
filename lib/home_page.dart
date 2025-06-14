import 'package:flutter/material.dart';
import 'Widget/PollCardWidget.dart';
import 'Widget/Tab_bar.dart';
import 'Widget/custom_app_bar.dart';
import 'Widget/custom_bottom_nav.dart';
import 'Widget/post_card_widget.dart';
import 'constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBottomNavIndex = 0; // For bottom nav
  int _selectedTabIndex = 0; // For capsule tab

  void _onBottomNavTapped(int index) {
    setState(() {
      _selectedBottomNavIndex = index;
    });
  }

  void _onTabSelected(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  // Dummy post data
  final List<Map<String, String>> dummyData = [
    {
      'image': 'assets/icons/AI.jpg',
      'title': 'Top 10 AI Tools You Should Know in 2025',
      'subtitle': 'Stay Ahead with These Game-Changing AI Tools',
      'author': 'TechSavvy',
      'role': 'Content Creator',
    },

    {
      'image': 'assets/images/Robot.png',
      'title': 'Top 10 AI Tools You Should Know in 2025',
      'subtitle': 'Stay Ahead with These Game-Changing AI Tools',
      'author': 'TechSavvy',
      'role': 'Content Creator',
    },
    {
      'image': 'assets/images/people.png',
      'title': 'Top 10 AI Tools You Should Know in 2025',
      'subtitle': 'Stay Ahead with These Game-Changing AI Tools',
      'author': 'TechSavvy',
      'role': 'Content Creator',
    },
    {
      'image': 'assets/images/Discover.png',
      'title': 'Top 10 AI Tools You Should Know in 2025',
      'subtitle': 'Stay Ahead with These Game-Changing AI Tools',
      'author': 'TechSavvy',
      'role': 'Content Creator',
    },
  ];

  // Horizontal image builder
  Widget _buildImageCard(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        path,
        width: 98,
        height: 181,
        fit: BoxFit.cover,
      ),
    );
  }

  // Capsule tab content
  Widget _buildTabContent() {
    switch (_selectedTabIndex) {
      case 0: // All Posts
        return Column(
          children: [
            for (var data in dummyData) PostCardWidget(data: data),
             PollCardWidget(),
             SizedBox(height: 40),
            SizedBox(
              height: 181,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _buildImageCard('assets/images/image.jpg'),
                     SizedBox(width: 4),
                    _buildImageCard('assets/images/image1.jpg'),
                     SizedBox(width: 4),
                    _buildImageCard('assets/images/image1.jpg'),
                     SizedBox(width: 4),
                    _buildImageCard('assets/images/image1.jpg'),
                  ],
                ),
              ),
            ),
          ],
        );
      case 1:
        return const Center(
          child: Text(
            'Videos Tab Content',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      case 2:
        return const Center(
          child: Text(
            'Short Videos Tab Content',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      case 3:
        return const Center(
          child: Text(
            'Nearby Tab Content',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        );
      default:
        return const SizedBox();
    }
  }

  // Bottom nav pages
  List<Widget> get _bottomPages => [
    // Home Page with tabs
    Column(
      children: [
        CustomTab(
          tabs: ['All Posts', 'Videos', 'Short Videos', 'Nearby'],
          selectedTabIndex: _selectedTabIndex,
          onTabSelected: _onTabSelected,
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: _buildTabContent(),
          ),
        ),
      ],
    ),
    const Center(child: Text('Jobs Page', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Stores Page', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Chats Page', style: TextStyle(color: Colors.white))),
    const Center(child: Text('Profile Page', style: TextStyle(color: Colors.white))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: CustomAppBar(),
      body: _bottomPages[_selectedBottomNavIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedBottomNavIndex,
        onItemTapped: _onBottomNavTapped,
      ),
    );
  }
}
