import 'package:equatable/equatable.dart';

class NewPageEvent extends Equatable{
  @override
  List<Object?> get props => [];
}


class UpdateName extends NewPageEvent{
  final String  name;
  UpdateName({this.name=""});
}