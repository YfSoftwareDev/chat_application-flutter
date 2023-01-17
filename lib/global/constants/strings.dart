import 'package:flutter/material.dart';

class ImgConst {
  static const String loginUser = "assets/userRectangle.png";
  static const String loginBackground = "assets/img2.png";
  static const String contactsBackground = "assets/img3.png";
}

class GuidingWordsConst {
  static const String enterName = "שם משתמש";
  static const String enterPassword = "הכנס סיסמה";
  static const String subscribeEnterName="הכנס שם משתמש";
  static const String subscribeEnterPassword="הכנס סיסמה";
  static const String subscribeVerifyPassword="אמת סיסמה";
}

class ButtonConst {
  static const String loginEnterButton = "כניסה";
  static const String subscribeButton = "רישום";
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
class MessageConst{
    static const String notExistsMessage = 'לא קיים משתמש';
    static const String existsUserMessage =  "משתמש זה כבר קיים";
    static const String passwordErrorMessage ="סיסמאות לא תואמות אואחד מיהם ריק אנ מילאו הכל ";
    static const String succeededMessage ='רישום עבר בהצלחה';
    static const String emptyTextMessage ="לא הוכנס שם או סיסמה אנא מילאו הכל";
}

class TitleConst{
  static const String subscribeTitle=" עמוד הרשמה";
}

class RouterConst{
  static const String loginScreen="/";
  static const  String subscribeScreen="/third";
  static const String conactsScreen="/second";
}
class TestConst{
  static const String demoPage="המשך יבוא";
}
