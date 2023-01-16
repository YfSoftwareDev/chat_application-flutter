import 'dart:async';
import 'dart:math';
import 'package:chat_application/logic/user_login_bloc/user_login_bloc.dart';
import 'package:chat_application/presentation/widgets/user_login/user_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/strings.dart';
import '../../model/user.dart';



class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  StreamController<double> controller = StreamController<double>.broadcast();
  late StreamSubscription<double> streamSubscription;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImgConst.loginBackground),
            fit: BoxFit.cover,
          ),
        ),
       child:     BlocConsumer<UserLoginBloc, UserLoginState>(
      listener: (context, state) {
        if (state is CheckForUserState) {
          if (state.userConfirms) {
            Navigator.of(context).pushNamed(RouterConst.conactsScreen);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(MessaggeConst.notExistsMessage),
              duration:const Duration(seconds:3),
            ));
          }
        }
      },
      builder: (context, state) {
        return Container(
            margin:const EdgeInsets.fromLTRB(700, 100, 700, 0),
            child: Column(
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage(ImgConst.loginUser),
                    radius: 120.0,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: GuidingWordsConst.enterName,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(255, 190, 93, 36))),
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: GuidingWordsConst.enterPassword,
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(
                            width: 5, color: Color.fromARGB(255, 146, 70, 26))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(400, 20, 0, 0),
                  child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(RouterConst.loginScreen);
                      },
                      child: Text(
                        ButtonConst.subscribeButton,
                        style:
                            TextStyle(color: Color.fromARGB(255, 175, 91, 12)),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 253, 253, 253)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(
                                    width: 3,
                                    color: Color.fromARGB(255, 177, 90, 9))),
                          ))),
                ),
                
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    0,
                    0,
                    400,
                    0,
                  ),
                  child: TextButton(
                      onPressed: () {
                        var user = User(
                            _nameController.text, _passwordController.text);
                        context
                            .read<UserLoginBloc>()
                            .add(CheckForUserEvent(user: user));
                      },
                      child: Text(
                        ButtonConst.enterButton,
                        style: TextStyle(
                            fontSize: 20,
                            color: Color.fromARGB(255, 253, 253, 253)),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromARGB(255, 177, 90, 9)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ))),
                ),
              ],
            ));
      },
    )
  
)
    );


  }



}