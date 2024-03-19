import 'package:equatable/equatable.dart';

class HomePageEvent extends Equatable{
  @override
  List<Object?> get props => [];
}

class UpdateName extends HomePageEvent{
  final String name;
  UpdateName({required this.name});
}