
import 'package:flutter/material.dart';
import 'package:sst/views/registration/login_screen.dart';

import '../../core/comment/custom_button.dart';
import '../../core/comment/space.dart';
import '../../core/utils/naviagtion.dart';
import '../../src/app_colors.dart';

class LanguageScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo.png',
                    alignment: Alignment.center),
                VerticalSpace(value: 2),
                Text('Language App ',
                    style: TextStyle(
                        fontSize: 25, color: AppColors.kPrimaryRedColor)),
                VerticalSpace(value: 3),
                Text('Choose The Language Of The Program',
                    style:
                        TextStyle(fontSize: 15, color: AppColors.kGrayColor)),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        text: 'English',
                        onPress: () {
                          AppNavigator.customNavigator(
                              context: context,
                              screen: LoginScreen(),
                              finish: true);
                        },
                      ),
                      HorizontalSpace(
                        value: 10,
                      ),
                      CustomButton(
                        text: 'عربي',
                        onPress: () {
                          AppNavigator.customNavigator(
                              context: context,
                              screen: LoginScreen(),
                              finish: true);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}