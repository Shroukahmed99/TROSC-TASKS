import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moster_app/cubit/password_cubit.dart';

class myTextfield extends StatelessWidget {
  const myTextfield({super.key, required this.text, required this.isPassword});
  final String text;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PasswordCubit, bool>(
      builder: (context, isPasswordVisible) {
        return TextFormField(
          cursorColor: const Color(0xFFF8FE11),
          keyboardType: TextInputType.visiblePassword,
          obscureText: isPassword && !isPasswordVisible, // التحكم في الإخفاء
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
                    onPressed: () {
                      context.read<PasswordCubit>().passwordShow();
                    },
                    icon: Icon(isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                  )
                : null,
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFF8FE11),
              ),
            ),
          ),
        );
      },
    );
  }
}
