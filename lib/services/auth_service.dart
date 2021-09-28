import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intgest_legislativo/models/account/account.dart';

class AuthenticationService {
  final Dio _dio = Dio();
  final String _apiKey = "AIzaSyAi-4pBZgvmLgdjNBNA2_Fw3MGTnB4H36U";

  Future<Account> signIn(String email, String password) async {
    final String _signApiUrl =
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_apiKey";

    try {
      final Response response = await _dio.post(
        _signApiUrl,
        data: json.encode({
          "email": email,
          "password": password,
          "returnSecureToken": true,
        }),
      );

      return Account.fromMap(response.data);
    } catch (error) {
      throw error;
    }
  }

  Future<Account> signInWithGoogle() async {
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication? auth = await user!.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth!.accessToken,
      idToken: auth.idToken,
    );

    final userCredencial =
        await FirebaseAuth.instance.signInWithCredential(credential);

    final account = Account(
      displayName: userCredencial.user!.displayName!,
      email: userCredencial.user!.email!,
      idToken: userCredencial.credential!.token.toString(),
      refreshToken: userCredencial.user!.refreshToken.toString(),
    );

    return account;
  }

  Future<void> signOutWithGoogle() async {
    await GoogleSignIn().signOut();
  }
}
