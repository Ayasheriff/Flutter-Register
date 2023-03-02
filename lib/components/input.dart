import 'package:flutter/material.dart';

Widget MyInputForm({
  required String lableText,
  required IconData prefixIcon,
  required double padding,
  required TextInputType keyboardType,
  IconData? suffixIcon,
  bool obscureText = false,
  required String? Function(String?)? validator,
  required TextEditingController controller,
}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: lableText,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: () {},
                icon: Icon(suffixIcon),
              )
            : null,
      ),
      validator: validator,
    ),
  );
}
