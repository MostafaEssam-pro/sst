import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sst/bloc/Requests/vehicle_request_cubit.dart';

import '../../../core/comment/appBar_custom.dart';
import '../../../core/utils/size_config.dart';
import '../../../src/app_colors.dart';

class VehicleFrom extends StatefulWidget {
  const VehicleFrom({Key? key}) : super(key: key);

  @override
  State<VehicleFrom> createState() => _VehicleFromState();
}
String? selectedValue = null;
final _dropdownFormKey = GlobalKey<FormState>();
class _VehicleFromState extends State<VehicleFrom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarCustom(text: ' اضافة طلب مركبة'),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          ),
          child: InkWell(
            onTap: () {
              print('called on tap');
            },
            child: const SizedBox(
              height: kToolbarHeight,
              width: double.infinity,
              child: Center(
                child: Text(
                  'أضافة الطلب',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 22),
                ),
              ),
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10, bottom: 1),
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Accept.png',
                  alignment: Alignment.topCenter,
                  width: 300,
                  height: SizeConfig.defaultSize! * 20,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      ),
                      child: Container(
                          color: AppColors.kPrimaryRedColor,
                          height: SizeConfig.defaultSize! * 51.5,
                          width: double.maxFinite,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                BlocConsumer<VehicleRequestCubit,
                                    VehicleRequestState>(
                                  listener: (context, state) {
                                    // TODO: implement listener
                                  },
                                  builder: (context, state) {
                                    var cubit = VehicleRequestCubit.get(context);
                                    return cubit.itemsVehicleRequestList.isEmpty
                                        ? Center(
                                            child: CircularProgressIndicator())
                                        : Flexible(
                                            child: Container(
                                              child: Padding(
                                                padding:  EdgeInsets.all(15),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,

                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text('اسم الموظف',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w700),),
                                                    ),
                                                    DropdownButtonFormField(
                                                        isExpanded: true,
                                                        hint: Text(
                                                          'Select Country',

                                                        ),
                                                        autofocus: true,

                                                        decoration: InputDecoration(



                                                          border: OutlineInputBorder(
                                                            borderSide: BorderSide(color: Colors.grey, width: 2),
                                                            borderRadius: BorderRadius.circular(50),
                                                          ),
                                                          filled: true,
                                                          fillColor: Colors.white,
                                                        ),
                                                        validator: (value) => value == null ? "Select a country" : null,
                                                        dropdownColor: Colors.white,

                                                        value: selectedValue,
                                                        onChanged: (String? newValue) {
                                                          setState(() {
                                                            selectedValue = newValue!;
                                                          });
                                                        },
                                                        items: dropdownItems),


                                                  ],
                                                ),
                                              ),
                                            )
                                          );
                                  },
                                )
                              ],
                            ),
                          )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("USA"),value: "USA"),
    DropdownMenuItem(child: Text("Canada"),value: "Canada"),
    DropdownMenuItem(child: Text("Brazil"),value: "Brazil"),
    DropdownMenuItem(child: Text("England"),value: "England"),
  ];
  return menuItems;
}