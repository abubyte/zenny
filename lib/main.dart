import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expense_tracker/services/locator.dart';

import 'blocs/app_bloc.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AppBloc>(),
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          body: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              if (state is AppInitial) {
                return Center(child: CircularProgressIndicator());
              } else if (state is AppLoaded) {
                return Center(child: Text('App Loaded'));
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
