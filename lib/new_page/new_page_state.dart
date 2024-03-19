import 'package:equatable/equatable.dart';

class NewPageState extends Equatable{

  final String name;
  const NewPageState({this.name=""});

  @override
  List<Object?> get props => [name];

  NewPageState copyWith({String? name}){
    return NewPageState(name: name ?? this.name);
  }

}