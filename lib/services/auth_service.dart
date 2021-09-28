import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:intgest_legislativo/models/account/account.dart';

class AuthenticationService {
  final Dio _dio = Dio();
  final String _apiKey = "AIzaSyAi-4pBZgvmLgdjNBNA2_Fw3MGTnB4H36U";
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

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

  Future<void> signInGoogle() async {
    await _googleSignIn.signIn();
  }

  Future<void> signOutGoogle() async {
    await _googleSignIn.signOut();
  }
}
