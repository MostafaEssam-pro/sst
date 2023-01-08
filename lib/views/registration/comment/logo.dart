
import 'package:flutter/material.dart';

import '../../../core/comment/space.dart';
import '../../../src/app_colors.dart';
class LogoCustom extends StatelessWidget {
  const LogoCustom({Key? key,this.textDescription,this.textTitle,this.width=300,this.height=300}) : super(key: key);
final String? textTitle;
final String? textDescription;
final double? height;
final double? width;

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Image.asset(
          'assets/images/login.png',
          alignment: Alignment.center,
          width: 300,
          height: 300,
        ),
        Text(textTitle!,
            style: TextStyle(
                fontSize: 25,
                color: AppColors.kPrimaryRedColor)),
        VerticalSpace(value: 1),
        Text(textDescription!,
            style: TextStyle(
                fontSize: 15,
                color: AppColors.kGrayColor)),
      ],
    );
  }
}
