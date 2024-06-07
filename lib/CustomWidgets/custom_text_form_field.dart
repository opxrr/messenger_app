import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintName;
  final bool isPassword;
  final TextInputType keyboardType;

  const CustomTextFormField(
      {super.key, required this.hintName,
        required this.isPassword,
        required this.keyboardType,
        });

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: isPassword,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey)
        ),
        hintText: hintName,
      ),
      keyboardType: keyboardType,
      style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),),
    );
  }
}
