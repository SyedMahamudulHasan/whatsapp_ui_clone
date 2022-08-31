import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/constants/app_color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final _tabController;

  @override
  void initState() {
    _tabController = TabController(initialIndex: 1, length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final msg_notification = 1;
    final tabList = [
      const Tab(
        icon: Icon(Icons.camera_alt_rounded),
      ),
      Tab(
        //text: "CHATS",
        child: Row(
          children: [
            const Flexible(
              child: Padding(
                padding: EdgeInsets.only(right: 5.0),
                child: Text('CHATS'),
              ),
            ),
            msg_notification == 0
                ? Container()
                : Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Text(
                      msg_notification.toString(),
                      style: TextStyle(
                        color: AppColors.appbarColor,
                      ),
                    ),
                  )
          ],
        ),
      ),
      const Tab(
        text: "STATUS",
      ),
      const Tab(
        text: "CALLS",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appbarColor,
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
          tabs: tabList.map((tab) => tab).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('camera'),
          Text('camera'),
          Text('camera'),
          Text('camera'),
        ],
      ),
    );
  }
}
