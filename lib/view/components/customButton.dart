import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Demo Button"),
      decoration: BoxDecoration(
          color: Colors.deepPurpleAccent
      ),
    );
  }
}