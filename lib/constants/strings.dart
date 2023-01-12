import 'package:flutter/material.dart';

class ImgConst {
  static String loginUser = "assets/userRectangle.png";
  static String loginBackground = "assets/img2.png";
}

class GuidingWordsConst {
  static String enterName = "שם משתמש";
  static String enterPassword = "הכנס סיסמה";
}

class ButtonConst {
  static String enterButton = "כניסה";
  static String subscribeButton = "רישום";
  static String loginEnterName="הכנס שם משתמש";
  static String loginEnterPassword="הכנס סיסמה";
  static String loginVerifyPassword="אמת סיסמה";
}

class JsonConst {
  static String usersJsonFile = "assets/lib/data/json/users.json";
  static String userFileName = 'users';
  static String userKeyName = 'name';
  static String userKeypassword = 'password';
  static String userinitialJsonFile = 'lib/data/users.json';
  static String userlocalFilename = 'users.json';
  static String emptyInputString = '';

}
class MessaggeConst{
    static String notExistsMessage = 'לא קיים משתמש';
    static String ExistsUserMessage =  "משתמש זה כבר קיים";
    static String passwordErrorMessage ="סיסמאות לא תואמות אואחד מיהם ריק אנ מילאו הכל ";
    static String succeededMessage ='רישום עבר בהצלחה';
    static String emptyTextMessage ="לא הוכנס שם או סיסמה אנא מילאו הכל";
}

class TitleConst{
  static String loginTitle=" עמוד הרשמה";
}

class routerConst{
  static String homeScreen="/";
  static String loginScreen="/third";
  static String conactsScreen="/second";
}
