import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/task_info.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final DateTime due;
  final TaskState state;

  const TaskCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.due,
    required this.state,
  });

  String _getStateMessage(TaskState state) {
    switch (state) {
      case TaskState.notStarted:
        return 'Not Start';
      case TaskState.completed:
        return 'Completed';
      case TaskState.inProcess:
      default:
        return 'In Process';
    }
  }

  (Color main, CardTheme theme) _getTheme(TaskState state) {
    var main = const Color.fromRGBO(146, 103, 249, 1);
    var bg = const Color.fromRGBO(213, 205, 251, 1);

    switch (state) {
      case TaskState.notStarted:
        main = const Color.fromRGBO(229, 106, 230, 1);
        bg = const Color.fromRGBO(239, 204, 246, 1);
        break;

      case TaskState.completed:
        main = const Color.fromARGB(255, 94, 214, 140);
        bg = const Color.fromRGBO(204, 245, 203, 1);
        break;

      case TaskState.inProcess:
      default:
        break;
    }

    return (
      main,
      CardTheme(
        color: bg,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: main,
            width: 2,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final (mainColor, theme) = _getTheme(state);
    return Card(
      color: theme.color,
      shape: theme.shape,
      child: Container(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      height: 1.2,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Text(
                    _getStateMessage(state),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 5),
              child: Text(subtitle),
            ),
            const Divider(
              color: Color.fromRGBO(229, 220, 237, 1),
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                children: [
                  const Text(
                    'Due',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  Text(DateFormat('E, LLL d h:mm a').format(due)),
                  const SizedBox(width: 5),
                  const Icon(Icons.keyboard_arrow_right),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
