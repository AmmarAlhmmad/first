enum TaskType {
  normal
}
class TaskModel {
  final int id;
  final String? title;
  final TaskType? type;
  final DateTime? dateTime;
  TaskModel({required this.id, this.title, this.type, this.dateTime});
}

