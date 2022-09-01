import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/app_color.dart';
import 'package:whatsapp_ui_clone/view/chats_screen.dart';

import '../utils/tabbar_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // ignore: prefer_typing_uninitialized_variables
  late final _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: AppColors.appbarColor,
            snap: false,
            pinned: true,
            floating: true, //this make the work done.
            title: const Text(
              'WhatsApp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            actions: const [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                  size: 24,
                ),
              ),
            ],
            bottom: TabBar(
              controller: _tabController,
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              //labelPadding: EdgeInsets.all(8),
              tabs: TabBarItem.tabList.map((tab) => tab).toList(),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: const [
            Text('camera'),
            ChatsScreen(),
            Text('camera'),
            Text('camera'),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        backgroundColor: AppColors.fltButton,
        onPressed: null,
        child: Icon(
          Icons.chat_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
