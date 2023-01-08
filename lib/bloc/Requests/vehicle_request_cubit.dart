import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sst/service/dio/sp_helper/cache_helper.dart';
import 'package:sst/service/dio_helper.dart';


import '../../model/Request/VehicleRequest/VehicleRequestCommonModel.dart';
import '../../model/VehicleRequestModel.dart';

part 'vehicle_request_state.dart';

class VehicleRequestCubit extends Cubit<VehicleRequestState> {

  VehicleRequestCubit() : super(VehicleRequestInitial());

  static VehicleRequestCubit get(context) => BlocProvider.of(context);
  List<ItemsVehicleRequest> itemsVehicleRequestList = [];
  VehicleRequestHup? VehicleRequests;

  VehicleRequestCommon? VehicleRequestCommons;


  GetVehicleRequest(int stuts) async {
    itemsVehicleRequestList.clear();
    print(stuts);
   await DioHelper.postData(
      url: 'VehicleRequest/SearchVehicleRequest',
      data: {
        'srchUserId': 12,
        'srchRequestType': 16,
        'srchMainType': 0,
        'deptPending': stuts==1?true : false,
        'deptAccepted':stuts==2?true : false,
        'deptRefused': stuts==3?true : false,
        'signaturePendingHaveOldSignature': true,
        'pagingRequest': {'page': 1, 'pageSize': 20, 'sort': null},
        'signaturePending':false,
        'signatureAccepted': false,
        'signatureRefused':  false,
      },
      actionBy: SharedPreferencesHelper.getData(key: 'UserCode').toString(),
      cultureLang: SharedPreferencesHelper.getData(key: 'lang').toString(),
      token: SharedPreferencesHelper.getData(key: 'token').toString(),
      RequestTypeCode: 16,
    ).then((value) {

      var jsonData = jsonDecode(value.data);
      print(value);

      VehicleRequests = VehicleRequestHup.fromJson(jsonData);
      for (var vehicleRequest in VehicleRequests!.items)itemsVehicleRequestList.add(vehicleRequest);
      emit(VehicleRequestGetSuccessState());

      return itemsVehicleRequestList;

    }).catchError((Object  error) {
     print(error.toString());
     emit(VehicleRequestGetErrorState());
   });
  }

  GetVehicleRequestCommons() async{
    await DioHelper.getData(
        url: 'VehicleRequest/SearchVehicleRequest',
      actionBy: SharedPreferencesHelper.getData(key: 'UserCode').toString(),
      cultureLang: SharedPreferencesHelper.getData(key: 'lang').toString(),
    ).then((value) {

      var jsonData = jsonDecode(value.data);
      VehicleRequestCommons = VehicleRequestCommon.fromJson(jsonData);

      print(value);
      return VehicleRequestCommons;
    });
  }
}
