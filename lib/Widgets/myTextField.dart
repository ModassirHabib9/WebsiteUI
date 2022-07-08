import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  final String hint;
  final TextInputType kry;
  final double width;
  // final Function? onChange;
  // final Function validator;
  final Widget suffixIcon;
  final Widget prefixIcon;
  // final Function onTap;
  final TextEditingController controller;
  // final Color borderColor;
  // final bool obscureText;
  // final InputDecoration decoration;
  // final Function(String) validator;

  // final MaskFilter maskFilter;
  MyTextFormField({
    @override this.hint,
    this.width,
    // this.onChange,
    this.kry,
    // required this.validator,
    this.suffixIcon,
    this.prefixIcon,
    // required this.onTap,
    this.controller,
    // required this.borderColor,
    // required this.obscureText,
    /*required this.decoration*/
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 10),
      width: width,
      child: TextFormField(
        // onChanged: onChange!,
        controller: controller,
        // controller: callback,
        // autovalidate: true,
        // obscureText: obscureText,
        // validator: validator(),
        // inputFormatters: inputFormatters,
        keyboardType: kry,

        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          contentPadding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFF0F0F0),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 70, 87, 233), width: 2)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Color.fromARGB(248, 255, 255, 255), width: 2)),
        ),
        // inputFormatters: [phoneFormatter],
      ),
    );
  }
}
