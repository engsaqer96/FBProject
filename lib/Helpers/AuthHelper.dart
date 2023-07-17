import 'package:firebase_auth/firebase_auth.dart';

class AuthHelper{
  AuthHelper._();
  static final FirebaseAuth instance=FirebaseAuth.instance;
  User? user=instance.currentUser;

  static Future<String> createUser(String email,String password) async{
    String msg='';
    try {
      await instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
       msg= 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        msg= 'The account already exists for that email.';
      }
    } catch (e) {
      msg= 'Opps something go wrong x_x';
    }
    return msg;
  }
  static Future<String> loginUser(String email,String password) async{
    String msg='';
    try {
      await instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        msg='No user found for that email.';
      } else if (e.code == 'wrong-password') {
        msg='Wrong password provided for that user.';
      }
    } catch (e) {
      msg= 'Opps something go wrong x_x';
    }
    return msg;
  }
  static singOut() async{
    await instance.signOut();
  }
}