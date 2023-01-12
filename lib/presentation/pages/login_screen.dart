import 'package:chat_application/logic/user_login_bloc/user_login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfigController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: BlocConsumer<UserLoginBloc, UserLoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
            margin: EdgeInsets.fromLTRB(700, 100, 700, 0),
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: ButtonConst.loginEnterName,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(151, 214, 123, 5))),
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: ButtonConst.loginEnterPassword,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(151, 214, 123, 5))),
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _passwordConfigController,
                  decoration: InputDecoration(
                    labelText: ButtonConst.loginVerifyPassword,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(151, 214, 123, 5))),
                  ),
                ),
              ],
            ));
      },
    )));

    ;
  }
}
