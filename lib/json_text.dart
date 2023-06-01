import 'dart:convert';

class User {
  String name;
  String email;

  User(this.name, this.email);

  // 역직렬화
  User.fromJson(Map<String, dynamic> json)
    : name = json['name'], email = json['email']
  // 직렬화
  Map<String, dynamic> toJson() {
    return {
      'name' : name,
      'email' : email,
    };
  }
  }


void main(){
// 실제 내가 받는 데이터
  String jsonString = '{"name": "홍길동","email": "abc@aaa.com"}';
  //
  Map<String, dynamic> json = jsonDecode(jsonString); //이대로 써야한다

  print(json['name']);

  User user = User.fromJson(json);
  print(user.name);

  user.name = '김갓갓';
  print(user.toJson());

  String userString = jsonEncode(user.toJson());
  print(userString);
}
