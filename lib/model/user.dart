class User{
  late String name;
  late String password;

  User(this.name ,this.password);

  Map<String,dynamic> toJson()=>{
       'name':name,
       'password':password,
    };
  

  factory User.fromJson(Map<String,dynamic> json){
    return User(json["name"], json['password']);
  }
  
  bool isEmpty(){
      if( name=="" && password == "")
         return true;
     
      else
        return false;
    
  }
  bool isFull(){
     if(name != "" && password != "")return true;
     else return false;
  }
}