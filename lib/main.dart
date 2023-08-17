import 'package:app_features/app_features.dart';
import 'package:first/features/add_reminder/add_reminder_feature.dart';
import 'package:first/features/app_master_layout.dart';
import 'package:flutter/material.dart';

void main() {
  AppFeatures.config(
    features: [
      AddReminderFeature(),
    ],
    masterLayout: AppMasterLayout(),
  );
  runApp(MaterialApp.router(
    routerConfig: AppFeatures.router,
    // home: AddReminder()
    //CustomRadio(),
  ));
}
