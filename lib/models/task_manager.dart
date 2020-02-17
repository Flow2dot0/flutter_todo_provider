import 'package:flutter/foundation.dart';
import 'package:flutter_todo_provider/models/task.dart';

class TaskManager extends ChangeNotifier {
  List<Task> tasks = [];
}
