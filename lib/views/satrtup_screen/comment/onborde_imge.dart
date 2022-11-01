import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/size_config.dart';

class OnBorderImages extends StatelessWidget {
  // ignore: non_constant_identifier_names
  late final String images;
  late final String text;

  OnBorderImages({Key? key, required this.images, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    '$images',
                    height: SizeConfig.defaultSize! * 30,
                    width: SizeConfig.defaultSize! * 50,

                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Text(text,
                        softWrap:true,
                        textAlign:TextAlign.center,

                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.5,
                            color: Colors.black,
                            fontSize: 20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
