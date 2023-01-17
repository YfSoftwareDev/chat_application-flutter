part of 'login_bloc.dart';


abstract class LoginState extends Equatable {}

class UserLoginInitialState extends LoginState {
  List<Object?> get props => throw UnimplementedError();
}


class CheckForUserState extends LoginState {
  bool userConfirms;

  CheckForUserState({required this.userConfirms});

  List<Object?> get props => [this.userConfirms];
}

class LoadingUsers extends LoginState {
  List<Object?> get props => [];
}

class ErrorSubscribeState extends LoginState{
  late String errorSubscribetion;
  
  ErrorSubscribeState({
    required this.errorSubscribetion
  });
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}