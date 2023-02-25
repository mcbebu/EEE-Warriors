import 'package:firebase_auth/firebase_auth.dart';
import 'database.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  var usrId = "";

// registration with email and password

  Future createNewUser(String name, String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User user = result.user as User;
      await DatabaseManager().createUserData(name, email, user.uid);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  // might need to delete this cause redundant
  Future createNewItem(
      String p_name, String imgurl, String p_desc, String p_price) async {
    final user = _auth.currentUser;
    final uid = user?.uid;
    var p_id = DateTime.now().toString();
    await DatabaseManager()
        .createItemData(p_id, p_name, imgurl, p_desc, p_price);
  }

// sign with email and password
  Future loginUser(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

// signout
  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
