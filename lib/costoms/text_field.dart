import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  final String hintText;
  final IconData? iconData;
  final TextEditingController? controller;

  const LoginField({
    Key? key,
    required this.hintText,
    this.iconData,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 300,
      ),
      child: TextFormField(
        controller: controller,
        obscureText: hintText.toLowerCase() == 'password',
        decoration: InputDecoration(
          prefixIcon: Icon(
            iconData,
          ),
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.amber,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
