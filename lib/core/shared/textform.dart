import 'package:flutter/material.dart';

class Textform extends StatelessWidget {
  final TextEditingController? mycontroller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardtype;
  final String? hint;
  const Textform(
      {super.key,
      this.mycontroller,
      this.validator,
      this.keyboardtype,
      this.hint});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      keyboardType: keyboardtype,
      validator: validator,
      controller: mycontroller,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 18,
      ),
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Color.fromARGB(40, 219, 219, 219),
        filled: true,
      ),
    );
  }
}
