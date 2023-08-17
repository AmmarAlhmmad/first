import 'package:app_features/app_features.dart';
import 'package:first/features/home/home_feature.dart';

class AppMasterLayout extends MasterLayout {
  @override
  List<Feature> get features => [HomeFeature()];
}
