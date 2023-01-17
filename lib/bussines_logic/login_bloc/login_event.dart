part of 'login_bloc.dart';

abstract class LoginEvent {}

class LoadedUsersEvent extends LoginEvent {
  List<Object?> get props => [];
}

class SubscribeUserEvent extends LoginEvent {
  late User user;
  late String configePassword;
  SubscribeUserEvent({required this.user ,required this.configePassword});

  @override
  List<Object?> get props => [user];
}

class CheckForUserEvent extends LoginEvent{
   late User user;

  CheckForUserEvent({required this.user});
  
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}

