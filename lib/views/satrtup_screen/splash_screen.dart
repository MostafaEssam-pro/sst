import 'dart:async';


import 'package:flutter/material.dart';

import '../../core/utils/naviagtion.dart';
import '../../core/utils/size_config.dart';
import '../../service/dio/sp_helper/cache_helper.dart';
import '../registration/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

String? _counter;

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => (SharedPreferencesHelper.getData(key: 'token')) == null
            ? AppNavigator.customNavigator(
                context: context, screen: LoginScreen(), finish: false)
            : AppNavigator.customNavigator(
            context: context, screen:LoginScreen(), finish: false),

        );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: Center(
        //color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}

// Future delay(context) async {
//   await Future.delayed(const Duration(milliseconds: 800), () {
//
//     if( _counter!=null){
//       print(_counter);
//        // AppNavigator.customNavigator(
//        //    context: context, screen: HomeScreen(), finish: true);
//     }else{
//       AppNavigator.customNavigator(
//           context: context, screen: LoginScreen(), finish: false);
//     }
//
//
//
//   });
// }
