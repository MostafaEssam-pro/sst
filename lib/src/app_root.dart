
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../bloc/registration/login/login_cubit.dart';

import '../views/satrtup_screen/splash_screen.dart';
import 'app_colors.dart';

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MultiBlocProvider(
      providers: [

        BlocProvider(create: (BuildContext context) => LoginCubit()),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          //AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        theme: ThemeData(
            brightness: Brightness.light,

            // this makes status bar text color black
            backgroundColor: Colors.white,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(

                statusBarColor: Colors.white,
                statusBarBrightness: Brightness.light,

              ),
              titleTextStyle: TextStyle(),
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              unselectedLabelStyle: TextStyle(color: Colors.red),
              selectedItemColor: AppColors.kPrimaryRedColor,
              unselectedItemColor: AppColors.kGrayColor,
            )),

        // supportedLocales: L10n.all,
        supportedLocales: [
          Locale('en', ''), // English, no country code
          Locale('ar', ''), // Spanish, no country code
        ],
        // localeResolutionCallback: (currentLang, supportLang) {
        //   if (currentLang != null) {
        //     for (Locale locale in supportLang) {
        //       if (locale.languageCode == currentLang.languageCode) {
        //         return currentLang;
        //       }
        //     }
        //   }
        //   return supportLang.first;
        // },
        home: SplashScreen(),
      ),
    );
  }
}
