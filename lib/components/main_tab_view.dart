import 'package:flutter/material.dart';

import '../models/task_info.dart';
import 'task_info_list_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabs = [
    'My Tasks',
    'Not Started',
    'In Process',
    'Completed',
  ];
  final List<TaskInfo> tasks = TaskInfo.infos;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        bottom: TabBar.secondary(
          controller: _tabController,
          isScrollable: true,
          tabs: tabs.map((tabName) => Tab(text: tabName)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          TaskInfoListView(tasks: tasks),
          TaskInfoListView(tasks: tasks, state: TaskState.notStarted),
          TaskInfoListView(tasks: tasks, state: TaskState.inProcess),
          TaskInfoListView(tasks: tasks, state: TaskState.completed),
        ],
      ),
    );
  }
}
