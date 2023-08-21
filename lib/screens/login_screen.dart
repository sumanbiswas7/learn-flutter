import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
          "Coolapp",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "John doe",
                  label: Text("Enter Name"),
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "123456",
                  label: Text("Enter Password"),
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    fixedSize:
                        MaterialStateProperty.all(Size(screenWidth, 32.0))),
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
