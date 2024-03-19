import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_demo1/home_page/home_page_event.dart';
import 'package:bloc_demo1/home_page/home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState>{

  HomePageBloc(super.initialState){
   on<UpdateName>(_updateName);
  }

  FutureOr<void> _updateName(UpdateName event, Emitter<HomePageState> emit) {
      String name = event.name;
      emit(state.copyWith(name: name));
  }

}