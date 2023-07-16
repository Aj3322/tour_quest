import 'package:cloud_firestore/cloud_firestore.dart';
class Users{
  final String email;
  final String uid;
  final String photoUrl;
  final String name;
  final String num;
  const Users(
      { required this.email,
        required this.uid,
        required this.photoUrl,
        required this.name,
        required this.num,
      });

  Map<String, dynamic> toJson() => {
    "email": email,
    "uid": uid,
    "photoUrl": photoUrl,
    "name": name,
    "num": num,
  };

  static Users fromSnap(DocumentSnapshot snapshot){
    return Users(email: (snapshot.data() as Map<String,dynamic>)['email'],
        uid: (snapshot.data() as Map<String,dynamic>)['uid'],
        photoUrl: (snapshot.data() as Map<String,dynamic>)['photoUrl'],
        name: (snapshot.data() as Map<String,dynamic>)['name'],
        num: (snapshot.data() as Map<String,dynamic>)['num'],
    );
  }
}