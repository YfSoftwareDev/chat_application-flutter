import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../constants/strings.dart';
import '../../model/user.dart';
import '../../repository/login_repository.dart';
part 'user_login_event.dart';
part 'user_login_state.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  late LoginRepository loginRepository;

  UserLoginBloc({required this.loginRepository})
      : super(UserLoginInitialState()) {
    on<SubscribeUserEvent>(_subscribeUser);
    on<CheckForUserEvent>(_checkForUser);
  }

  void _subscribeUser(
      SubscribeUserEvent event, Emitter<UserLoginState> emit) async {
    final state = this.state;
    if (event.user.isntFull()) {
      if ((state is ErrorSubscribeState)!= true){
emit(ErrorSubscribeState(  errorSubscribetion: MessaggeConst.emptyTextMessage));
      }
      print(event.user.isntFull().toString());
   


    }
    else if (await loginRepository.checkForUser(event.user)) {
      emit(ErrorSubscribeState(
          errorSubscribetion: MessaggeConst.ExistsUserMessage));
    } 
    else if (event.configePassword == event.user.password) {
      loginRepository.sendUserToJson(event.user);
      emit(LoadedUsersState(user: event.user));
    } else {
      emit(ErrorSubscribeState(
          errorSubscribetion: MessaggeConst.passwordErrorMessage));
    }
  }

  void _checkForUser(
      CheckForUserEvent event, Emitter<UserLoginState> emit) async {
    bool checkForUser = await loginRepository.checkForUser(event.user);

    if (checkForUser) {
      emit(CheckForUserState(userConfirms: true));
    }
    emit(CheckForUserState(userConfirms: false));
  }
}
