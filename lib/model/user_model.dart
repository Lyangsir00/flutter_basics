class UserModel {
  String? id;
  String? fullname;
  String? email;
  UserModel({this.email, this.fullname, this.id});

//Map to object
  UserModel.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    email = map['email'];
    fullname = map['fullname'];
  }
//object to map
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['fullname'] = fullname;
    return data;
  }
}
