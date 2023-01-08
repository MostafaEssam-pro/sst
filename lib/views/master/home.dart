import 'package:flutter/material.dart';
import 'package:sst/core/comment/custom_button.dart';
import 'package:sst/core/utils/naviagtion.dart';
import 'package:sst/views/Request/vehicle/vehicle_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(text: 'طلب مركبة',onPress:(){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VehicleScreen()),
              );
            } ),
          ),

        ],
      ),
    );
  }
}
