import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global/constants/strings.dart';
import '../../admain/model/user.dart';
import '../../admain/repository/login_repository.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late UserRepository loginRepository;

  LoginBloc({required this.loginRepository})
      : super(UserLoginInitialState()) {
    on<CheckForUserEvent>(_checkForUser);
  }


  void _checkForUser(
      CheckForUserEvent event, Emitter<LoginState> emit) async {
    bool checkForUser = await loginRepository.checkForUser(event.user);

    emit(CheckForUserState(userConfirms: (checkForUser)));
  }
}
