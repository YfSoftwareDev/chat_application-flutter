part of 'subscribe_bloc.dart';

abstract class SubscribeState extends Equatable {
  const SubscribeState();
  
  @override
  List<Object> get props => [];
}

class SubscribeInitial extends SubscribeState {}

class ErrorSubscribeState extends SubscribeState{
  late String errorSubscribetion;
  
  ErrorSubscribeState({
    required this.errorSubscribetion
  });
}

class LoadedUsersState extends SubscribeState {
  User user;

  LoadedUsersState({required this.user});

}
