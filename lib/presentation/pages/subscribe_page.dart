import 'package:chat_application/admain/repository/login_repository.dart';
import 'package:chat_application/bussines_logic/subscribe_bloc/subscribe_bloc.dart';
import 'package:chat_application/presentation/widgets/subscribe_widgets/buttons_subscribe.dart';
import 'package:chat_application/presentation/widgets/subscribe_widgets/textfield_subscribe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../global/constants/integers.dart';
import '../../global/constants/strings.dart';
import '../../admain/model/user.dart';

class SubscribeScreen extends StatelessWidget {
  SubscribeScreen({super.key});

  final TextEditingController _passwordConfigController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SubscribeBloc(userRepository: UserRepository()),
      child: Scaffold(
          appBar: AppBar(
            title: Text(TitleConst.subscribeTitle),
            backgroundColor: const Color.fromARGB(211, 173, 67, 5),
          ),
          body: BlocConsumer<SubscribeBloc, SubscribeState>(
            listener: (context, state) {},
            builder: (context, state) {
              return BlocConsumer<SubscribeBloc, SubscribeState>(
                listener: (context, state) {
                  if (state is LoadedUsersState) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(MessageConst.succeededMessage),
                      duration:
                          Duration(seconds: IntegersConst.messageDuration),
                    ));
                    Navigator.of(context).pushNamed(RouterConst.conactsScreen);
                  } else if (state is ErrorSubscribeState) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.errorSubscribetion),
                      duration: const Duration(
                          seconds: IntegersConst.messageDuration),
                    ));
                  }
                },
                builder: (context, state) {
                  return Container(
                      margin: const EdgeInsets.fromLTRB(700, 100, 700, 0),
                      child: Column(
                        children: <Widget>[
                          TextFieldSubscribe(),
                          const SizedBox(height: 40),
                          ButtonsSubscribe()
                        ],
                      ));
                },
              );
            },
          )),
    );

    ;
  }
}
