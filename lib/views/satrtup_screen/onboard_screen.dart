
import 'package:flutter/material.dart';

import '../../core/comment/custom_button.dart';
import '../../core/comment/space.dart';
import '../../core/utils/naviagtion.dart';
import '../../core/utils/size_config.dart';
import '../../src/app_colors.dart';
import 'comment/onborde_imge.dart';
import 'language_screen.dart';

class OnboardScreen extends StatefulWidget {
  @override
  State<OnboardScreen> createState() => _SliderShowState();
}

class _SliderShowState extends State<OnboardScreen> {
  final int _numberpages = 3;

  // strat pages number
  final PageController _PageController = PageController(initialPage: 0);

  // strat slider iamges nmber
  int _currentPage = 0;

  List<Widget> _buidPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numberpages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(microseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 13.0,
      width: isActive ? 13.0 : 13.0,
      decoration: BoxDecoration(
          color: isActive ? AppColors.kPrimaryRedColor : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          border: Border.all(color: Colors.black38)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Scaffold(
        body: Center(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      height: SizeConfig.defaultSize! * 10,
                      alignment: Alignment.centerRight,
                      child: ElevatedButton(
                          onPressed: () => AppNavigator.customNavigator(
                              context: context,
                              screen: LanguageScreen(),
                              finish: false),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                AppColors.kPrimaryRedColor),
                          ),
                          child: Text(
                            'Skip',
                            style:
                                TextStyle(color: Colors.white, fontSize: 16.0),
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: SizeConfig.defaultSize! * 50,
                      child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _PageController,
                        onPageChanged: (int page) {
                          // ignore: invalid_use_of_protected_member
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: [
                          OnBorderImages(
                            images: 'assets/images/onboarding1.png',
                            text:
                                'Browse The Menu And Order Directly From the application',
                          ),
                          OnBorderImages(
                            images: 'assets/images/onboarding2.png',
                            text:
                                'Your order will be immediately collected and send by our courier',
                          ),
                          OnBorderImages(
                            images: 'assets/images/onboarding3.png',
                            text:
                                'Pick up delivery at your door and enjoygroceries',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: SizeConfig.defaultSize! * 13,
                      child: Column(
                        children: [
                          _currentPage == _numberpages - 1
                              ? CustomButton(
                                  text: 'Get start',
                                  onPress: () => {
                                    AppNavigator.customNavigator(
                                        context: context,
                                        screen: LanguageScreen(),
                                        finish: false)
                                  },
                                )
                              : Text(''),
                          VerticalSpace(value: 5),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: _buidPageIndicator()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
