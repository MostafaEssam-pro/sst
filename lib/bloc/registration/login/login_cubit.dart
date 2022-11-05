import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import '../../../model/LoginModel.dart';
import '../../../service/dio/sp_helper/cache_helper.dart';
import '../../../service/dio_helper.dart';


part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);
  LoginModel? loginModel;

  userLogin(String userName, String password) {

    emit(LoginGetLoadingState());

    DioHelper.loginData(
        url: 'Login',
        query: {'userName': userName, 'password': password}).then((value) async {
      print(value.data);
      var jsonData = jsonDecode(value.data);
      print(jsonData);
      loginModel = LoginModel.fromJson(jsonData);

    SharedPreferencesHelper.saveData(key: 'token', value: loginModel!.token);
      SharedPreferencesHelper.saveData(key: 'lang', value: loginModel!.lang);
      SharedPreferencesHelper.saveData(key: 'UserCode', value: loginModel!.userCode);
      emit(LoginGetSuccessState(loginModel!));
    }).catchError((error) {
      print(error.toString());
      emit(LoginGetErrorState());
    });
  }
}
