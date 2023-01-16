
import 'package:chat_application/constants/strings.dart';
import 'package:flutter/material.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Container(
       decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImgConst.loginBackground),
            fit: BoxFit.cover,
          ),
        ),
      child:const Text(" to be contue"),
    );
  }
}