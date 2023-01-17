
import 'package:chat_application/global/constants/strings.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
   const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
         decoration:const  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImgConst.contactsBackground),
              fit: BoxFit.cover,
            ),
          ),
        child:const Text(TestConst.demoPage),
      ),
    );
  }
}