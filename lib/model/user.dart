import '../constants/strings.dart';

class User{
  late String name;
  late String password;

  User(this.name ,this.password);

  Map<String,dynamic> toJson()=>{
       JsonConst.userKeyName:name,
       JsonConst.userKeypassword:password,
    };
  

  factory User.fromJson(Map<String,dynamic> json){
    return User(json[JsonConst.userKeyName], json[JsonConst.userKeypassword]);
  }
  
  bool isEmpty(){
      if( name==JsonConst.emptyInputString && password == JsonConst.emptyInputString)
         return true;
     
      else
        return false;
    
  }
  
  bool isntFull(){
      if( name==JsonConst.emptyInputString || password == JsonConst.emptyInputString)
         return true;
     
      else
        return false;
    
  }
  
  
  bool isFull(){
     if(name != JsonConst.emptyInputString && password != JsonConst.emptyInputString)return true;
     else return false;
  }
}