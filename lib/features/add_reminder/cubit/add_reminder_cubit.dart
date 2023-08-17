import 'package:first/features/add_reminder/cubit/add_rmiinder_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddReminderCubit extends Cubit<AddReminderState> {
  AddReminderCubit() : super(AddReminderState(days: []));

  toggleDay(String day) {
    List<String>? days = state.days;
    if (days?.contains(day) ?? false) {
      days?.remove(day);
    } else {
      days?.add(day);
    }
    emit(state.copyWith(days: days));
  }
}
