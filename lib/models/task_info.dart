class TaskInfo {
  final String title;
  final String subtitle;
  final DateTime due;
  final TaskState state;

  const TaskInfo(
    this.title,
    this.subtitle,
    this.due,
    this.state,
  );

  static List<TaskInfo> infos = [
    TaskInfo(
      'Create a new Asset Manager for FlutterFlow',
      'Finish out Container Project',
      DateTime(2023, 4, 20),
      TaskState.inProcess,
    ),
    TaskInfo(
      'Mark the Task as complete',
      'Launch Stream App Tutorial',
      DateTime(2023, 4, 20),
      TaskState.inProcess,
    ),
    TaskInfo(
      'Grade Franklins Figma File',
      'Bethel Tech',
      DateTime(2023, 3, 26, 23),
      TaskState.notStarted,
    ),
    TaskInfo(
      'Implement Teams',
      'Launch a Fully Responsive Kanban Board App',
      DateTime(2023, 1, 25, 23),
      TaskState.completed,
    ),
  ];
}

enum TaskState {
  inProcess,
  notStarted,
  completed,
}
