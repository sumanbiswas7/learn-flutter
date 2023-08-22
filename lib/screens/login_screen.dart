import 'package:coolapp/components/app_buttons.dart';
import 'package:coolapp/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool tappedState = false;
  final _formKey = GlobalKey<FormState>();

  _handleLogin() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        tappedState = !tappedState;
      });
      Navigator.popAndPushNamed(context, AppRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Material(
      color: Colors.white,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          "assets/images/login-illustration.png",
          fit: BoxFit.cover,
          width: screenWidth * 0.75,
        ),
        const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return "Name cannot be empty";
                    if (value.length <= 3) return "Enter a valid name";
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "John doe",
                    label: Text("Enter Name"),
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return "Password cannot be empty";
                    if (value.length <= 4) return "Password length must be > 4";
                    return null;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "123456",
                    label: Text("Enter Password"),
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                LoginButton(onPressed: _handleLogin, tapped: tappedState),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
