import 'package:flutter/material.dart';

import '../../../src/app_colors.dart';

class CustomBtnocialMedia extends StatelessWidget {
  final String? imagesName;

  final Function()? onPress;

  const CustomBtnocialMedia({Key? key, this.imagesName, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Row(
        children: [
          Image.asset(
            imagesName!,
            height: 25,
            width: 25,
          )
        ],
      ),
      style: ElevatedButton.styleFrom(
          primary: AppColors.KSocialMediaColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          minimumSize: Size(56, 56),
          shadowColor: Colors.black,
          elevation: 9.0),
      onPressed: onPress,
    );
  }
}
