import 'package:flutter/cupertino.dart';
import 'package:sst/service/dio/sp_helper/cache_helper.dart';
import 'package:sst/service/dio_helper.dart';
import 'package:sst/src/app_root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  DioHelper.init();
  runApp(AppRoot());
}