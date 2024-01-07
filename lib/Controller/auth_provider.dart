import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:promilo_v2/View/Screens/home_page.dart';

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  bool isChecked = false;

  void setCheckBox(bool value) {
    isChecked = !isChecked;
    notifyListeners();
  }

  setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  String hashPassword(String password) {
    var bytes = utf8.encode(password);
    var digest = sha256.convert(bytes);
    notifyListeners();
    return digest.toString();
  }

  void login_user(String email, String password, BuildContext context) async {
    String hashedPassword = hashPassword(password);
    setLoading(true);

    try {
      var headers = {
        'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
        'Cookie':
            'JSESSIONID=2FDC53A7B8BE0FB3E9D18F548A7476F8; access_token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE3MDY5ODE1MjksImF1dGhlbnRpY2F0ZWRfdXNlciI6eyJpZCI6IjJjOWZhOGY1OGExYmJlYzYwMThhMjBlMjdiNTQwMTI0IiwidXNlcm5hbWUiOiJ0ZXN0NDVAeW9wbWFpbC5jb20iLCJmaXJzdE5hbWUiOiJjaGV0YW4gIiwibGFzdE5hbWUiOiJzIiwiZW1haWwiOiJ0ZXN0NDVAeW9wbWFpbC5jb20iLCJtb2JpbGVOdW1iZXIiOiI5MDAwMDAwMDQ1IiwibmFtZSI6ImNoZXRhbiAgcyIsInJvbGVzIjpbXSwic2VydmljZXMiOltdfSwidXNlcl9uYW1lIjoidGVzdDQ1QHlvcG1ahaWwuY29tITo6IVByb21pbG8iLCJqdGkiOiJiZjkyMmU1YS05MjBjLTQzMzAtOTdjZC0zYmYyYzBhZGNjMWIiLCJjbGllbnRfaWQiOiJQcm9taWxvIiwic2NvcGUiOlsicmVhZCIsIndyaXRlIiwidHJ1c3QiXX0.YNBlsrukM664cA_gUlrDhFiI7gkcrZ50CEmvAVSwEus'
      };

      var response = await http.post(
        Uri.parse('https://apiv2stg.promilo.com/user/oauth/token'),
        headers: headers,
        body: {
          'username': email,
          'password': hashedPassword,
          'grant_type': 'password',
        },
      );

      if (response.statusCode == 200) {
        // print(response.body);

        // -------------------------------------------------------------------
        // Parse and print the API response
        // var jsonResponse = json.decode(response.body);
        // var accessToken = jsonResponse['response']['access_token'];
        // var tokenType = jsonResponse['response']['token_type'];
        // var refreshToken = jsonResponse['response']['refresh_token'];

        // print('Access Token: $accessToken');
        // print('Token Type: $tokenType');
        // print('Refresh Token: $refreshToken');
        // print('Expires In: $expiresIn');

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
        print('Login Successful');
        setLoading(false);
      } else {
        print(response.reasonPhrase);
        print('Login Failed');
        setLoading(false);
      }
    } catch (e) {
      print(e.toString());
      setLoading(false);
    }
  }
}
