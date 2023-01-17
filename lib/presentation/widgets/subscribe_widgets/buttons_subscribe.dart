import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../admain/model/user.dart';
import '../../../bussines_logic/subscribe_bloc/subscribe_bloc.dart';
import '../../../global/variables.dart';


class ButtonsSubscribe extends StatelessWidget {
  const ButtonsSubscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextButton(
              onPressed: () {
                var user = User(LocalVariable.subscribeNameController.text, LocalVariable.subscribePasswordController.text);

                context.read<SubscribeBloc>().add(SubscribeUserEvent(
                    user: user,
                    configePassword: LocalVariable.passworVerifydController.text));
              },
              child: Text(
                //todo put the right  string
               "ButtonConst.loginEnterButton" ,
                style: TextStyle(color: Color.fromARGB(255, 139, 71, 7)),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 253, 253, 253)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        side: const BorderSide(
                            width: 3, color: Color.fromARGB(255, 133, 67, 6))),
                  ))),
        ],
      ),
    );
  }
}
