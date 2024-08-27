import 'package:flutter/material.dart';

class myTextfield extends StatelessWidget {
  const myTextfield({super.key, required this.text, required this.isPassword});
  final String text;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xFFF8FE11),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        label: Text(
          text,
          style: const TextStyle(
            color: Color(0xFF808696),
          ),
        ),
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {},
                icon: Icon(Icons.visibility),
              )
            : null,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFF8FE11),
          ),
        ),
      ),
    );
  }
}
