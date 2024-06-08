import 'package:flutter/material.dart';

// ignore: must_be_immutable, camel_case_types
class AuthTextForm extends StatelessWidget {
  final String hinttext;
  // final TextEditingController mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscuretext;
  // final IconData icondata;
  final void Function()? ontap;
  const AuthTextForm({
    super.key,
    required this.hinttext,
    // required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.obscuretext,
    // required this.icondata,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext == null || obscuretext == false ? false : true,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : TextInputType.text,
      validator: valid,
      // controller: mycontroller,
      cursorHeight: 20,
      decoration: InputDecoration(
        hintText: hinttext,
        fillColor: Colors.grey[100],
      ),
    );
  }
}
