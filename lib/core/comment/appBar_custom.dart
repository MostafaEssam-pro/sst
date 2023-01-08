import 'package:flutter/material.dart';
import 'package:sst/src/app_colors.dart';



class AppBarCustom extends StatelessWidget with PreferredSizeWidget{
  const AppBarCustom({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: AppColors.kPrimaryRedColor, //change your color here
      ),
      title:  Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}