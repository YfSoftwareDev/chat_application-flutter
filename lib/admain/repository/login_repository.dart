import 'dart:convert';

import 'package:chat_application/global/constants/strings.dart';
import 'package:chat_application/admain/repository/repository.dart';
import '../model/user.dart';



class UserRepository {
  late Repository repository = Repository();
  void sendUserToJson(User user) async {
    Map<String, dynamic> recvList;
    if (user.isFull()) {
      try {
        recvList = jsonDecode(await repository.readFromFile(JsonConst.userFileName));
        recvList[JsonConst.userFileName].add(user.toJson());
        repository.writeToFile(jsonEncode(recvList), JsonConst.userFileName);
      } catch (Expcation) {
        print(Expcation);
      }
    }

  }

  Future<bool> checkForUser(User user) async {
    Map<String, dynamic> recvList;
    try {
      recvList = jsonDecode(await repository.readFromFile(JsonConst.userFileName));
      var temp = recvList[JsonConst.userFileName][0][JsonConst.userFileName];
      for (int i = 0; i < recvList[JsonConst.userFileName].length; i++) {
        if (recvList[JsonConst.userFileName][i][JsonConst.userKeyName] == user.name) {
          if (recvList[JsonConst.userFileName][i][JsonConst.userKeypassword] == user.password) {
            return true;
          }
        }
      }
    } catch (Expcation) {
      print(Expcation);
    }
    return false;
  }
}
  // Future<File> _initializeFile() async {
  //   final localDirectory = await getApplicationDocumentsDirectory();
  //   final file = File('$localDirectory/$localFilename');

