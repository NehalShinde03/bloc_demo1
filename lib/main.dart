import 'package:bloc_demo1/home_page/home_page_bloc.dart';
import 'package:bloc_demo1/home_page/home_page_state.dart';
import 'package:bloc_demo1/home_page/home_page_view.dart';
import 'package:bloc_demo1/new_page/new_page_bloc.dart';
import 'package:bloc_demo1/new_page/new_page_state.dart';
import 'package:bloc_demo1/new_page/new_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
//        BlocProvider(create: (context) => HomePageBloc(const HomePageState())),
        BlocProvider(create: (context) => NewPageBloc(const NewPageState()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const NewPageView(),
      ),
    );
  }
}
