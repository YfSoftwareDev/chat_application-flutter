import 'package:chat_application/logic/user_login_bloc/user_login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/strings.dart';
import '../../model/user.dart';

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
            appBar: AppBar(
              title: Text(TitleConst.loginTitle),
              backgroundColor: Color.fromARGB(211, 173, 67, 5),
            ),
            body: BlocConsumer<UserLoginBloc, UserLoginState>(
              listener: (context, state) {},
              builder: (context, state) {
                return BlocConsumer<UserLoginBloc, UserLoginState>(
                  listener: (context, state) {
                    if (state is LoadedUsersState) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(MessaggeConst.succeededMessage),
                        duration:const Duration(seconds: 3),
                      ));
                    } else if(state is ErrorSubscribeState) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.errorSubscribetion),
                        duration:const Duration(seconds: 3),
                      ));
                    }
                  },
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
                                        width: 5,
                                        color:
                                            Color.fromARGB(255, 173, 67, 5))),
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
                                      width: 5,
                                      color: Color.fromARGB(255, 168, 68, 10),
                                    )),
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
                                      width: 5,
                                      color: Color.fromARGB(255, 151, 59, 6),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(400, 20, 0, 0),
                              child: TextButton(
                                  onPressed: () {
                                    var user = User(_nameController.text,
                                        _passwordController.text);

                                    context.read<UserLoginBloc>().add(
                                        SubscribeUserEvent(
                                            user: user,
                                            configePassword:
                                                _passwordConfigController
                                                    .text));
                                  },
                                  child: Text(
                                    ButtonConst.subscribeButton,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 139, 71, 7)),
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  255, 253, 253, 253)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                            side: BorderSide(
                                                width: 3,
                                                color: Color.fromARGB(255, 133, 67, 6))),
                                      ))),
                            ),
                          ],
                        ));
                  },
                );
              },
            )));

    ;
  }
}
