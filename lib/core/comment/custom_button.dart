import 'package:flutter/material.dart';

import '../../src/app_colors.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPress;

  const CustomButton({Key? key, required this.text, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      style: ElevatedButton.styleFrom(
          primary: AppColors.kPrimaryRedColor,
          minimumSize: Size.fromHeight(37),
          fixedSize: Size(90, 37),
          shadowColor: Colors.black,
          elevation: 5),
      onPressed: onPress,
    );
  }
}
