import 'package:bloc_demo1/new_page/new_page_bloc.dart';
import 'package:bloc_demo1/new_page/new_page_event.dart';
import 'package:bloc_demo1/new_page/new_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPageView extends StatefulWidget {
  const NewPageView({super.key});

  @override
  State<NewPageView> createState() => _NewPageViewState();
}

class _NewPageViewState extends State<NewPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<NewPageBloc, NewPageState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.name),
                ElevatedButton(
                    onPressed: () {
                      context.read<NewPageBloc>().add(
                        UpdateName(name: "Nehal Shinde")
                      );
                    },
                    child: const Text('Tap to me')
                )

              ],
            ),
          );
        },
      ),
    );
  }
}
