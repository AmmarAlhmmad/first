import 'package:app_features/app_features.dart';
import 'package:first/features/home/cubit/home_cubit.dart';
import 'package:first/features/home/home_page.dart';
import 'package:get_it/get_it.dart';

class HomeFeature extends Feature {
  @override
  void get dependencies => {
        GetIt.I.registerSingleton(HomeCubit()),
      };

  @override
  String get name => '/';

  @override
  List<GoRoute> get routes =>
      [GoRoute(path: name, name: name, builder: (_, __) => const HomePage())];
}
