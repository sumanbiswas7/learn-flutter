import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool tapped;
  const LoginButton({super.key, required this.onPressed, required this.tapped});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    handleButtonTap() {
      widget.onPressed();
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
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
        ),
      ),
    );
  }
}
