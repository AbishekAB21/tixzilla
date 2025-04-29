import 'package:flutter/material.dart';

class SigninSignUpLabel extends StatelessWidget {
  final Widget child;
  final AlignmentGeometry align;
  const SigninSignUpLabel({super.key, required this.child, required this.align});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: child,
      ),
    );
  }
}
