import 'package:flutter/material.dart';
import 'package:flutter_application_arzoo/cart_page.dart';
import 'package:flutter_application_arzoo/counter/counter_screen.dart';
import 'package:flutter_application_arzoo/dashboard_page.dart';
import 'package:flutter_application_arzoo/splash_page.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'login_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecom App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      //home: DashboardPage(),
      home: CounterScreen(),
    );
  }
}
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(debugShowCheckedModeBanner: false, home: RegistrationPage()),
//   );
// }

// class RegistrationPage extends StatefulWidget {
//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {
//   bool isLogin = true;
//   bool rememberMe = false;
//   bool obscurePassword = true;
//   bool obscureConfirmPassword = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             // Header with background shape and app title
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(80),
//                 ),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "Techno Planet",
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),

//             // Toggle Buttons for Login and Registration
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 _toggleButton("Login", isLogin),
//                 _toggleButton("Registration", !isLogin),
//               ],
//             ),

//             const SizedBox(height: 20),

//             // Form Fields
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Hello there 👋",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20),

//                   _inputField("Name", Icons.person),
//                   const SizedBox(height: 12),
//                   _inputField("Email", Icons.email),
//                   const SizedBox(height: 12),
//                   _passwordField("Password", true),
//                   const SizedBox(height: 12),
//                   _passwordField("Confirm Password", false),

//                   Row(
//                     children: [
//                       Checkbox(
//                         value: rememberMe,
//                         onChanged: (value) {
//                           setState(() {
//                             rememberMe = value!;
//                           });
//                         },
//                       ),
//                       const Text("Remember me"),
//                     ],
//                   ),

//                   const SizedBox(height: 10),

//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       minimumSize: Size(double.infinity, 50),
//                       backgroundColor: Colors.grey.shade200,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     child: const Text(
//                       "Submit",
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ),

//                   const SizedBox(height: 20),

//                   OutlinedButton.icon(
//                     onPressed: () {},
//                     style: OutlinedButton.styleFrom(
//                       minimumSize: Size(double.infinity, 50),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                     ),
//                     icon: Image.asset('assets/google_logo.png', height: 10),
//                     label: const Text("Sign up with Google"),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _toggleButton(String text, bool selected) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8),
//       child: ElevatedButton(
//         onPressed: () {
//           setState(() {
//             isLogin = text == "Login";
//           });
//         },
//         style: ElevatedButton.styleFrom(
//           backgroundColor: selected ? Colors.white : Colors.grey.shade200,
//           foregroundColor: Colors.black,
//           elevation: 0,
//           shape: StadiumBorder(),
//         ),
//         child: Text(text),
//       ),
//     );
//   }

//   Widget _inputField(String hint, IconData icon) {
//     return TextField(
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon),
//         hintText: hint,
//         filled: true,
//         fillColor: Colors.grey.shade100,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }

//   Widget _passwordField(String hint, bool isPassword) {
//     return TextField(
//       obscureText: isPassword ? obscurePassword : obscureConfirmPassword,
//       decoration: InputDecoration(
//         prefixIcon: Icon(Icons.lock),
//         suffixIcon: IconButton(
//           icon: Icon(
//             (isPassword ? obscurePassword : obscureConfirmPassword)
//                 ? Icons.visibility
//                 : Icons.visibility_off,
//           ),
//           onPressed: () {
//             setState(() {
//               if (isPassword) {
//                 obscurePassword = !obscurePassword;
//               } else {
//                 obscureConfirmPassword = !obscureConfirmPassword;
//               }
//             });
//           },
//         ),
//         hintText: hint,
//         filled: true,
//         fillColor: Colors.grey.shade100,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }
