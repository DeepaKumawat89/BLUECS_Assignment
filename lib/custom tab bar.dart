import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  // @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rounded Tabs Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Rounded Tabs Demo'),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(48),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: TabBar(
                  isScrollable: true,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.blue,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue, // Selected tab color
                  ),
                  tabs: [
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text('Tab 1'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text('Tab 2'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text('Tab 3'),
                      ),
                    ),
                    Tab(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.blue, width: 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                        child: Text('Tab 4'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text('Content for Tab 1')),
              Center(child: Text('Content for Tab 2')),
              Center(child: Text('Content for Tab 3')),
              Center(child: Text('Content for Tab 4')),
            ],
          ),
        ),
      ),
    );
  }
}