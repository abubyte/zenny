import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expense_tracker/services/locator.dart';

import 'blocs/app_bloc.dart';
import 'screens/home/home_screen.dart';

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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color(0xFF1F2937),
          scaffoldBackgroundColor: Color(0xFFF3F4F6),
        ),
        home: Scaffold(
          body: BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              if (state is AppInitial) {
                return Center(child: CircularProgressIndicator());
              } else if (state is AppLoaded) {
                return HomeScreen();
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
