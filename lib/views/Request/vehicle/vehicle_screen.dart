import 'package:flutter/material.dart';
import 'package:sst/views/Request/vehicle/vehicle_view.dart';

import '../../../core/comment/appBar_custom.dart';
import '../../../core/comment/custom_button.dart';

class VehicleScreen extends StatelessWidget {
  const VehicleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(text: 'طلب مركبة'),
      body: Container(

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(


            children: [
              Image.asset(
                'assets/images/request.png',
                alignment: Alignment.center,
                width: 400,
                height: 300,
              ),
              SizedBox(
                height: 15,
              ),
              CustomButton(text: 'طلب معلق',onPress: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => VehicleView(stuts: 1,)),);
              }),
              SizedBox(
                height: 15,
              ),
              CustomButton(text: 'طلب مقبول',onPress: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => VehicleView(stuts: 2,)),);
              }),
              SizedBox(
                height: 15,
              ),
              CustomButton(text: 'طلب مرفوض',onPress: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => VehicleView(stuts: 3,)),);
              }),

            ],
          ),
        ),
      ),
    );
  }
}
