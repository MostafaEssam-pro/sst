import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sst/core/comment/appBar_custom.dart';
import 'package:sst/core/comment/custom_button.dart';
import 'package:sst/src/app_colors.dart';
import 'package:sst/views/Request/vehicle/vehicle_from.dart';

import '../../../bloc/Requests/vehicle_request_cubit.dart';
import '../../../core/comment/custom_text.dart';
import '../../../core/comment/space.dart';
import '../../../core/utils/size_config.dart';
import '../../../core/utils/time_config.dart';

class VehicleView extends StatefulWidget {
  final int stuts;

  const VehicleView({Key? key, required this.stuts}) : super(key: key);

  @override
  State<VehicleView> createState() => _VehicleViewState();
}
var inputFormat = DateFormat('dd/MM/yyyy');
class _VehicleViewState extends State<VehicleView> {
  void initState() {
    // TODO: implement initState
    super.initState();
    VehicleRequestCubit.get(context).GetVehicleRequest(widget.stuts);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(text: 'طلب قيد الانظار'),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => VehicleFrom()),);
        },
        child: new Icon(Icons.add,),
      ),

      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          scrollDirection: Axis.vertical,
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            ),
            child: Container(
              color: AppColors.kPrimaryRedColor,
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/Accept.png',
                          alignment: Alignment.topCenter,
                          width: 300,
                          height: SizeConfig.defaultSize! * 20,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: SizeConfig.defaultSize! * 52.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        BlocConsumer<VehicleRequestCubit, VehicleRequestState>(
                          listener: (context, state) {
                            // TODO: implement listener
                          },
                          builder: (context, state) {
                            var cubit = VehicleRequestCubit.get(context);
                            return cubit.itemsVehicleRequestList.isEmpty
                                ? Center(child: CircularProgressIndicator())
                                : Flexible(
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemCount: cubit
                                            .itemsVehicleRequestList.length,
                                        itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 10, 10, 10),
                                                height: 240,
                                                // width: double.maxFinite,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                child: Card(
                                                  color: Colors.white,
                                                  elevation: 20,
                                                  shape:
                                                      const RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                  ),
                                                  child: Column(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(
                                                                30)),
                                                        child: Container(
                                                          height: SizeConfig
                                                                  .defaultSize! *
                                                              18,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          color: Colors
                                                              .grey.shade100,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                  cubit.itemsVehicleRequestList[index].vehiclesRequestNavigations.vehicleTypeCodeNavigation.arabicName,
                                                                  style: TextStyle(
                                                                      fontSize: 20, color: AppColors.kPrimaryRedColor, fontWeight: FontWeight.bold),
                                                             ),

                                                                VerticalSpace(value: 0.9),
                                                                CustomText(text:'الاتجاه : ${cubit.itemsVehicleRequestList[index].vehiclesRequestNavigations.directionCodeNavigation.arabicName}'),
                                                                VerticalSpace(value: 0.5),
                                                                CustomText(text:'اسم الموظف : '+"${cubit.itemsVehicleRequestList[index].employeeCodeNavigation.employeeCode}-"+"${cubit.itemsVehicleRequestList[index].employeeCodeNavigation.arabicName}"),
                                                                VerticalSpace(value: 0.5),
                                                                Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment.end,
                                                                  children: [
                                                                    CustomText(text:'تاريخ : '+"${cubit.itemsVehicleRequestList[index].requestDateHijri}"),
                                                                    VerticalSpace(value: 0.5),
                                                                    HorizontalSpace(value: 5),
                                                                    CustomText(text: 'تاريخ : '+ getFormatedDate(cubit.itemsVehicleRequestList[index].requestDate),)
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 20),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          children: [
                                                            Text('d'),
                                                            Text('d'),
                                                            Text('d'),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                  );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
