part of 'user_login_bloc.dart';

abstract class UserLoginEvent {}

class LoadedUsers extends UserLoginEvent {
  List<Object?> get props => [];
}

class SubscribeUserEvent extends UserLoginEvent {
  late User user;
  late String configePassword;
  SubscribeUserEvent({required this.user ,required this.configePassword});

  @override
  List<Object?> get props => [user];
}

class CheckForUserEvent extends UserLoginEvent{
   late User user;

  CheckForUserEvent({required this.user});
  
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}

