class AddReminderState {
  List<String>? days;
  AddReminderState({this.days});

  copyWith({List<String>? days}) {
    return AddReminderState(
      days: days ?? this.days,
    );
  }
}
