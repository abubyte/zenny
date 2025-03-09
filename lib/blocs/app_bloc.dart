import 'package:flutter_bloc/flutter_bloc.dart';

// Events
abstract class AppEvent {}

class AppStarted extends AppEvent {}

// States
abstract class AppState {}

class AppInitial extends AppState {}

class AppLoaded extends AppState {}

// Bloc
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
    on<AppStarted>((event, emit) async {
      await Future.delayed(
        Duration(seconds: 2),
      ); // Simulate loading TODO: Remove this line
      emit(AppLoaded());
    });

    add(AppStarted());
  }
}
