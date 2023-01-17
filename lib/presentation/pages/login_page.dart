import 'dart:async';
import 'dart:math';
import 'package:chat_application/admain/repository/login_repository.dart';
import 'package:chat_application/presentation/widgets/login_widgets/textfields_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bussines_logic/login_bloc/login_bloc.dart';
import '../../global/constants/integers.dart';
import '../../global/constants/strings.dart';
import '../../admain/model/user.dart';
import '../widgets/login_widgets/buttons_login.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(loginRepository: UserRepository()),
      child: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImgConst.loginBackground),
                  fit: BoxFit.cover,
                ),
              ),
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is CheckForUserState) {
                    if (state.userConfirms) {
                      Navigator.of(context)
                          .pushNamed(RouterConst.conactsScreen);
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text(MessageConst.notExistsMessage),
                        duration:  Duration(
                            seconds: IntegersConst.messageDuration),
                      ));
                    }
                  }
                },
                builder: (context, state) {
                  return Container(
                      margin: const EdgeInsets.fromLTRB(700, 100, 700, 0),
                      child: Column(
                        children: const <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(ImgConst.loginUser),
                              radius: 120.0,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextFildsWidgetLogin(),
                          SizedBox(
                            height: 30,
                          ),
                          ButtonWidgetLogin(),
                        ],
                      ));
                },
              ))),
    );
  }
}
