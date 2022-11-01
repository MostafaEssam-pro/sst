import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String text;
  final double? fontSize;
  final TextEditingController NameController;
  final IconData? icon;
  final TextInputType InputType;
  final bool obscureText;
final  int? maxLengthText;
  final String? Function(String?)? validatorField;
  final Widget? suffixIconRight ;

  const TextFieldCustom(
      {Key? key,
      required this.text,
        this.validatorField,
      this.fontSize,
       this.icon,
      required this.InputType,
       this.obscureText=false ,
        this.suffixIconRight,
        this.maxLengthText,
      required this.NameController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        autocorrect: true,
        obscureText: obscureText,
        keyboardType: InputType,
        controller: NameController,
        validator: validatorField,
        maxLength:maxLengthText,
        decoration: InputDecoration(

          // hintText: text,
          labelText: text,
          prefixIcon: Icon(icon),
          hintStyle: TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white70,
            suffixIcon: suffixIconRight,


        ),
      ),
    );
  }


}
