import 'package:flutter/material.dart';
import 'package:promilo_v2/Controller/auth_provider.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emaiController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Promilo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 80),
                  Text(
                    'Hi, Welcome Back',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Please Sign in to Continue',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: emaiController,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Email Id is empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your Email Id",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(''),
                          Text(
                            'Sign In With OTP',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Password',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 5),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Password is empty';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Enter your Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                      SizedBox(height: 6),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Checkbox(
                                value: authProvider.isChecked,
                                onChanged: (bool? value) {
                                  authProvider.setCheckBox(value!);
                                },
                              ),
                              Text(
                                'Remember me',
                              ),
                            ],
                          ),
                          Text(
                            'Forgate Password',
                            style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        print('Validation is done');
                        authProvider.login_user(emaiController.text.toString(),
                            passwordController.text.toString(), context);
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: authProvider.loading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                          'https://static-00.iconduck.com/assets.00/google-icon-2048x2048-czn3g8x8.png'),
                    SizedBox(width: 15),
                    Image.network(
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeaWqulKYfAUUUmXa9zsJLM4rzr37mh3serguT19U3sg4MD-pB8xTnHnEdrzPptk3sIlA&usqp=CAU'),
                          SizedBox(width: 15),
                          Image.network(
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                          'https://cdn-icons-png.flaticon.com/256/124/124010.png'),
                          SizedBox(width: 15),
                          Image.network(
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-b8_ENdBdLCEJPC8IV4KULHQRIRr3ayknBaRCzH5MTpexjIXprLmzb6Yn2C3zSmxXDaA&usqp=CAU'),
                          SizedBox(width: 15),
                          Image.network(
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                          'https://p7.hiclipart.com/preview/922/489/218/whatsapp-icon-logo-whatsapp-logo-png.jpg'),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Business User?', style: TextStyle(fontSize: 15)),
                      Text(
                        'Dont have an account',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Login Here',
                          style:
                              TextStyle(fontSize: 16, color: Colors.blue[900])),
                      Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16, color: Colors.blue[900]),
                      ),
                    ],
                  ),
                  SizedBox(height: 60),
                  Text(
                    'By continuing, you agree to Promilo Terms of User & Privacy Policy.',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  // Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
