import 'dart:async';

import 'package:bloc_demo1/new_page/new_page_event.dart';
import 'package:bloc_demo1/new_page/new_page_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewPageBloc extends Bloc<NewPageEvent, NewPageState>{
  NewPageBloc(super.initialState){
    on<UpdateName>(_updateName);
  }

  FutureOr<void> _updateName(UpdateName event, Emitter<NewPageState> emit) {
    String name = event.name;
    emit(state.copyWith(name: name));
  }
}