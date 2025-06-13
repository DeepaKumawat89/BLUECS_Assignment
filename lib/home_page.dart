import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _svgIcon(String path, {double size = 24, Color color = Colors.white}) {
    return SvgPicture.asset(
      path,
      height: size,
      width: size,
      // color: color,
    );
  }

  Widget _buildCustomTab(String label) {
    return Tab(
      child: Container(
        width: 100,
        height: 36,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white),
        ),
        child: Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      Column(
        children: [
          const SizedBox(height: 12),
          SizedBox(
            height: 48,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
                color: Colors.transparent,
              ),
              indicatorColor: Colors.transparent,
              labelPadding: const EdgeInsets.symmetric(horizontal: 8),
              overlayColor: MaterialStateProperty.all(Colors.transparent),
              tabs: [
                _buildCustomTab('Overview'),
                _buildCustomTab('Details'),
                _buildCustomTab('History'),
                _buildCustomTab('Settings'),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Text('Overview Tab', style: TextStyle(color: Colors.white))),
                Center(child: Text('Details Tab', style: TextStyle(color: Colors.white))),
                Center(child: Text('History Tab', style: TextStyle(color: Colors.white))),
                Center(child: Text('Settings Tab', style: TextStyle(color: Colors.white))),
              ],
            ),
          ),
        ],
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
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF161F28),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: _svgIcon('assets/icons/home.svg'), label: 'Home'),
          BottomNavigationBarItem(icon: _svgIcon('assets/icons/image.svg'), label: 'Search'),
          BottomNavigationBarItem(icon: _svgIcon('assets/icons/messages.svg'), label: 'Add'),
          BottomNavigationBarItem(icon: _svgIcon('assets/icons/bell.svg'), label: 'Alerts'),
          BottomNavigationBarItem(icon: _svgIcon('assets/icons/image.svg'), label: 'Profile'),
        ],
      ),
    );
  }
}
