import 'package:app_features/app_features.dart';
import 'package:first/features/add_reminder/add_reminder.dart';
import 'package:first/features/add_reminder/cubit/add_reminder_cubit.dart';
import 'package:get_it/get_it.dart';

class AddReminderFeature extends Feature {
  @override
  void get dependencies => {
        GetIt.I.registerSingleton(AddReminderCubit()),
      };
  @override
  String get name => '/add-reminder';

  @override
  List<GoRoute> get routes => [
        GoRoute(
            path: name, name: name, builder: (_, __) => const AddReminderPage())
      ];
}
