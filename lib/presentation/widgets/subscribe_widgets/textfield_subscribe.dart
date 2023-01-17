import 'package:flutter/material.dart';

import '../../../global/constants/strings.dart';
import '../../../global/variables.dart';

class TextFieldSubscribe extends StatelessWidget {
  const TextFieldSubscribe({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          TextField(
            controller: LocalVariable.subscribeNameController,
            decoration: InputDecoration(
              labelText: GuidingWordsConst.subscribeEnterName,
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                      width: 5, color: Color.fromARGB(255, 173, 67, 5))),
            ),
          ),
          const SizedBox(height: 40),
          TextField(
            controller: LocalVariable.subscribePasswordController,
            decoration: InputDecoration(
              labelText: GuidingWordsConst.subscribeEnterPassword,
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 168, 68, 10),
                  )),
            ),
          ),
          const SizedBox(height: 40),
          TextField(
            controller: LocalVariable.passworVerifydController,
            decoration: InputDecoration(
              labelText: GuidingWordsConst.subscribeVerifyPassword,
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    width: 5,
                    color: Color.fromARGB(255, 151, 59, 6),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
