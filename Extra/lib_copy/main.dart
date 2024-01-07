// import 'package:flutter/material.dart';
// import 'package:promilo_v2/auth_provider.dart';
// import 'package:promilo_v2/login_page.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthProvider())
//       ],
//       child: Builder(
//         builder: (BuildContext context) {
//         return MaterialApp(
//           title: 'Flutter Demo',
//           theme: ThemeData(
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//             useMaterial3: true,
//           ),
//           home: LoginScreen(),
//         );
//       }),
//     );
//   }
// }
