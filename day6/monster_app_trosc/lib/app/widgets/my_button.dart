import 'package:flutter/material.dart';

class myButton extends StatelessWidget {
  const myButton({super.key, required this.text, required this.nextPage});
  final String text;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return nextPage;
        }));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF8FE11),
        fixedSize: const Size(311, 48),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF141414),
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
