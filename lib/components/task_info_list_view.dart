import 'package:flutter/material.dart';

import '../models/task_info.dart';
import 'task_card.dart';

class TaskInfoListView extends StatelessWidget {
  const TaskInfoListView({
    super.key,
    required this.tasks,
    this.state,
  });

  final List<TaskInfo> tasks;
  final TaskState? state;

  @override
  Widget build(BuildContext context) {
    final filterTasks = tasks
        .where((task) => state == null ? true : task.state == state)
        .toList();
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemBuilder: (BuildContext context, int index) {
        final task = filterTasks[index];

        return TaskCard(
          title: task.title,
          subtitle: task.subtitle,
          due: task.due,
          state: task.state,
        );
      },
      itemCount: filterTasks.length,
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 15),
    );
  }
}
