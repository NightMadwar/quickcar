import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String email;

  User({required this.id, required this.email});

  @override
  List<Object?> get props => [id, email];
}
