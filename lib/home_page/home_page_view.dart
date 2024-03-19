import 'package:bloc_demo1/home_page/home_page_bloc.dart';
import 'package:bloc_demo1/home_page/home_page_event.dart';
import 'package:bloc_demo1/home_page/home_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomePageBloc, HomePageState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.name),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    context.read<HomePageBloc>().add(
                          UpdateName(name: 'Mustang GT')
                    );
                  },
                  child: const Text("Tap to me"),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
