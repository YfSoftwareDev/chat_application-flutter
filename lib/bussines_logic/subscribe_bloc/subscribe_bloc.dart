import 'package:bloc/bloc.dart';
import 'package:chat_application/admain/repository/login_repository.dart';
import 'package:equatable/equatable.dart';

import '../../admain/model/user.dart';
import '../../global/constants/strings.dart';

part 'subscribe_event.dart';
part 'subscribe_state.dart';

class SubscribeBloc extends Bloc<SubscribeEvent, SubscribeState> {
  UserRepository userRepository;

  SubscribeBloc({required this.userRepository}) : super(SubscribeInitial()) {
    on<SubscribeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }


    void _subscribeUser(
      SubscribeUserEvent event, Emitter<SubscribeState> emit) async {
    final state = this.state;
    if (event.user.isFull()) {
      if ((state is ErrorSubscribeState)) {
        emit(ErrorSubscribeState(
            errorSubscribetion: MessageConst.emptyTextMessage));
      }
      print(event.user.isFull().toString());
    } else if (await userRepository.checkForUser(event.user)) {
      emit(ErrorSubscribeState(
          errorSubscribetion: MessageConst.existsUserMessage));
    } else if (event.configePassword == event.user.password) {
      userRepository.sendUserToJson(event.user);
      emit(LoadedUsersState(user: event.user));
    } else {
      emit(ErrorSubscribeState(
          errorSubscribetion: MessageConst.passwordErrorMessage));
    }
  }

}
