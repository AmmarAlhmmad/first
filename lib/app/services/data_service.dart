import 'package:first/app/models/task_model.dart';

class DataService{

  DataService._();

  static DataService? _instance;

  static DataService? get instance  {
    _instance ??= DataService._();
    return _instance;
  }

  List<TaskModel> tasks = <TaskModel>[];

   getTasks()
  {
   tasks = List.generate(20,
            (index) => TaskModel(id: index + 1, title: 'Task Title $index')
    ).toList();
  }

  List<TaskModel>? todayTasks(){
    return tasks.where((element) => (element?.id ?? 0) < 10).toList();
  }
  List<TaskModel>? weekTasks(){
    return tasks.where((element) => (element?.id ?? 5) < 10).toList();
  }
}