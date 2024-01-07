// import 'package:flutter/material.dart';
// import 'package:promilo_v2/auth_provider.dart';
// import 'package:provider/provider.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController emaiController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     final authProvider = Provider.of<AuthProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextFormField(
//               controller: emaiController,
//               decoration: InputDecoration(
//                 hintText: 'Email',
//               ),
//             ),
//             SizedBox(height: 20),
//             TextFormField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 hintText: 'Password',
//               ),
//             ),
//             SizedBox(height: 20),
//             InkWell(
//               onTap: () {
//                 authProvider.login(emaiController.text.toString(),
//                     passwordController.text.toString());
//               },
//               child: Container(
//                 height: 40,
//                 decoration: BoxDecoration(
//                     color: Colors.deepPurple,
//                     borderRadius: BorderRadius.circular(10)),
//                 child: Center(
//                   child: authProvider.loading
//                       ? CircularProgressIndicator()
//                       : Text('Login'),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
