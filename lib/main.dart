import 'package:chat_application/presentation/pages/login_page.dart';
import 'package:chat_application/admain/repository/login_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bussines_logic/login_bloc/login_bloc.dart';
import 'global/variables.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute:LocalVariable.router.onGenerateRoute,
  ));
}
