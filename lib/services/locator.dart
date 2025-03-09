import 'package:get_it/get_it.dart';

import '../blocs/app_bloc.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<AppBloc>(AppBloc());
}
