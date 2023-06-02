import 'dart:convert';
import 'dart:io';

class Employee {
  String name;
  int age;

  Employee(this.name, this.age);
// 직렬화 과정수행
  Map<String, dynamic> toJson() => {
        'name': name,
        'age': age,
      };
// 역직렬화 과정수행
  Employee.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}

// 추후 다시 해보기
class Department {
  String name;
  Employee leader;

  Department(this.name, this.leader);
}
