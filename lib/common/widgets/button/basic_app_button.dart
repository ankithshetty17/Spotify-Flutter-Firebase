import 'package:flutter/material.dart';

class BasicAppButton extends StatelessWidget {
  final VoidCallback Onpressed;
  final String buttonText;
  final double ? height;
  const BasicAppButton({
    super.key, 
    required this.Onpressed, 
    required this.buttonText, 
    this.height
    });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: Onpressed,
    style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(height ?? 65)
    ),
     child: Text(buttonText,
     style: TextStyle(color: Colors.white),));
  }
}