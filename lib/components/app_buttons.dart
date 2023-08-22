import 'package:coolapp/routes/app_routes.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    handleButtonTap() async {
      setState(() {
        isTapped = !isTapped;
      });
      await Future.delayed(const Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, AppRoutes.homeRoute);
    }

    return InkWell(
      splashColor: Colors.lime,
      onTap: () => handleButtonTap(),
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(isTapped ? 35 : 5),
        ),
        child: AnimatedContainer(
          width: isTapped ? 35 : screenWidth,
          height: 35,
          duration: const Duration(seconds: 1),
          alignment: Alignment.center,
          child: isTapped
              ? const Icon(
                  Icons.done,
                  color: Colors.white,
                )
              : const Text(
                  "Login here",
                  style: TextStyle(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
