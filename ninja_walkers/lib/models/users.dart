import 'package:cloud_firestore/cloud_firestore.dart';


class Users{

  String name;
  String email;
  String uid;
  Users({required this.name, required this.email, required this.uid});

  factory Users.fromFirestore(
      DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options,
      ) {
    final data = snapshot.data();
    return Users(
      name: data?['name'],
      email: data?['email'],
      uid: data?['user_id']
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      if (name != null) "name": name,
      if (email != null) "email": email,
      if (uid != null) "user_id": uid,
    };
  }
}



