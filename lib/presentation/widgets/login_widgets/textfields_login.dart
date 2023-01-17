import 'package:flutter/material.dart';

import '../../../global/constants/strings.dart';
import '../../../global/variables.dart';

class TextFildsWidgetLogin extends StatefulWidget {
  const TextFildsWidgetLogin({super.key});

  @override
  State<TextFildsWidgetLogin> createState() => _TextFildsWidgetLoginState();
}

class _TextFildsWidgetLoginState extends State<TextFildsWidgetLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        TextField(
          controller: LocalVariable.subscribeNameController,
          decoration: InputDecoration(
            labelText: GuidingWordsConst.enterName,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                    width: 5, color: Color.fromARGB(255, 190, 93, 36))),
          ),
        ),
        const SizedBox(height: 40),
        TextField(
          controller: LocalVariable.loginPasswordController,
          decoration: InputDecoration(
            labelText: GuidingWordsConst.enterPassword,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                    width: 5, color: Color.fromARGB(255, 146, 70, 26))),
          ),
        ),
      ],
    ));
  }
}
