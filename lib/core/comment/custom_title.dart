

import 'package:flutter/cupertino.dart';

import '../../src/app_colors.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(text,
            style: TextStyle(fontSize: 20, color: AppColors.kPrimaryRedColor)),
      ],
    );
  }
}
