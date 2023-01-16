import 'package:flutter/material.dart';

class ImgConst {
  static const String loginUser = "assets/userRectangle.png";
  static const String loginBackground = "assets/img2.png";
}

class GuidingWordsConst {
  static const String enterName = "שם משתמש";
  static const String enterPassword = "הכנס סיסמה";
}

class ButtonConst {
  static const String enterButton = "כניסה";
  static const String subscribeButton = "רישום";
  static const String loginEnterName="הכנס שם משתמש";
  static const String loginEnterPassword="הכנס סיסמה";
  static const String loginVerifyPassword="אמת סיסמה";
}

class JsonConst {
  static const String usersJsonFile = "assets/lib/data/json/users.json";
  static const String userFileName = 'users';
  static const String userKeyName = 'name';
  static const String userKeypassword = 'password';
  static const String userinitialJsonFile = 'lib/data/users.json';
  static const String userlocalFilename = 'users.json';
  static const String emptyInputString = '';

}
class MessaggeConst{
    static const String notExistsMessage = 'לא קיים משתמש';
    static const String ExistsUserMessage =  "משתמש זה כבר קיים";
    static const String passwordErrorMessage ="סיסמאות לא תואמות אואחד מיהם ריק אנ מילאו הכל ";
    static const String succeededMessage ='רישום עבר בהצלחה';
    static const String emptyTextMessage ="לא הוכנס שם או סיסמה אנא מילאו הכל";
}

class TitleConst{
  static const String loginTitle=" עמוד הרשמה";
}

class RouterConst{
  static const String homeScreen="/";
  static const  String loginScreen="/third";
  static const String conactsScreen="/second";
}
