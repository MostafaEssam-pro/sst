
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sst/views/registration/comment/logo.dart';

import '../../bloc/registration/login/login_cubit.dart';
import '../../core/comment/custom_button.dart';
import '../../core/comment/custom_text.dart';
import '../../core/comment/customtext_field.dart';
import '../../core/comment/space.dart';
import '../../core/comment/validator_field.dart';
import '../../core/utils/naviagtion.dart';
import '../../core/utils/size_config.dart';
import '../../src/app_colors.dart';
import '../master/home.dart';
import 'comment/custom_btnocial_media.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _PasswordInput = TextEditingController();
  var _userNameInput = TextEditingController();
  var formSinupKey = GlobalKey<FormState>();

  bool _isObscure = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {

        if(state is LoginGetSuccessState){
          AppNavigator.customNavigator(context: context, screen: HomeScreen(), finish: true);
          AppNavigator.customNavigator(
              context: context, screen: HomeScreen(), finish: true);
        }
      },
      builder: (context, state) {
        var cubit = LoginCubit.get(context);
        return Form(
          key: formSinupKey,
          //autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Scaffold(
            body: SingleChildScrollView(
              padding: EdgeInsets.only(top: 10),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(

                      child: LogoCustom(
                        width: 100,
                        height: SizeConfig.defaultSize! * 10,
                        textTitle: 'welcome back',
                        textDescription: 'Please login to your account',
                      )),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.defaultSize! * 2),
                    child: Container(
                      height: SizeConfig.defaultSize! * 19,
                      child: Column(
                        children: [
                          TextFieldCustom(
                              text: 'User Name',
                              InputType: TextInputType.text,
                              validatorField: (value) => validate(value),
                              icon: Icons.person,
                              NameController: _userNameInput),

                          TextFieldCustom(
                            text: 'Your Password',
                            icon: Icons.lock,
                            NameController: _PasswordInput,
                            validatorField: (value) =>
                                validate(value),
                            InputType: TextInputType.text,
                            obscureText: _isObscure,
                            suffixIconRight: IconButton(
                              icon: Icon(
                                _isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                            ),
                          ),
                          // Container(
                          //   height: SizeConfig.defaultSize! * 5,
                          //   child: Row(
                          //     children: [
                          //       TextButton(
                          //         onPressed: () {
                          //           AppNavigator.customNavigator(
                          //               context: context,
                          //               screen: ForgetPasswordScreen(),
                          //               finish: false);
                          //         },
                          //         child: Text(
                          //           'Forgot Password ?',
                          //           style: TextStyle(
                          //               color: AppColors
                          //                   .kPrimaryRedColor), //title
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.defaultSize! * 2),
                    child: Container(
                        height: SizeConfig.defaultSize! * 20,
                        child: Column(
                          children: [
                            CustomButton(
                                text: 'Login',
                                onPress: () => {
                                  if (formSinupKey.currentState!
                                      .validate())
                                    {
                                      cubit.userLogin(
                                          _userNameInput.text.trim(),
                                          _PasswordInput.text.trim())
                                    }
                                }),
                            if(state is LoginGetLoadingState)
                              LinearProgressIndicator(
                                backgroundColor: Color(0xFF9e1f62),
                                minHeight: 10,
                              ),

                          ],
                        )),
                  ),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
