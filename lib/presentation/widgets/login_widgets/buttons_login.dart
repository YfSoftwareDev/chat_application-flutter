import 'package:chat_application/global/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bussines_logic/login_bloc/login_bloc.dart';
import '../../../global/constants/strings.dart';
import '../../../admain/model/user.dart';

class ButtonWidgetLogin extends StatelessWidget {
  const ButtonWidgetLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(RouterConst.subscribeScreen);
              },
              child: Text(
                ButtonConst.subscribeButton,
                style: TextStyle(color: Color.fromARGB(255, 175, 91, 12)),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                     const Color.fromARGB(255, 253, 253, 253)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        side:const BorderSide(
                            width: 3, color: Color.fromARGB(255, 177, 90, 9))),
                  ))),
                  const SizedBox(width: 200,),
          TextButton(
              onPressed: () {
                var user = User(LocalVariable.subscribeNameController.text,
                    LocalVariable.loginPasswordController.text);
                context
                    .read<LoginBloc>()
                    .add(CheckForUserEvent(user: user));
              },
              child: Text(
                ButtonConst.loginEnterButton,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 253, 253, 253)),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                   const   Color.fromARGB(255, 177, 90, 9)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  ))),
        ],
      ),
    );
  }
}
