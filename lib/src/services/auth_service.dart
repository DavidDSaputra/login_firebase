import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;


  Stream<User?> get user => _auth.authStateChanges();


  Future<User?> login({required String email, required String password}) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
  
      throw e.message ?? 'Terjadi kesalahan saat login';
    } catch (e) {
      throw 'Terjadi kesalahan yang tidak diketahui';
    }
  }


  Future<void> logout() async {
    await _auth.signOut();
  }


  User? getCurrentUser() {
    return _auth.currentUser;
  }
}
