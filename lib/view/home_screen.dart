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

  cameraTab() {}

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    int i = 1;
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
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3.0,
              labelPadding: EdgeInsets.zero,
              tabs: TabBarItem.tabList
                  .map((tab) => SizedBox(
                        width: i++ == 1 ? size.width * 0.15 : size.width * 0.28,
                        child: tab,
                      ))
                  .toList(),
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(child: Text('CAMERA')),
            ChatsScreen(),
            Center(child: Text('STATUS')),
            Center(child: Text('CALLS')),
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
