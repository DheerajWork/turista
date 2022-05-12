import 'package:flutter/material.dart';
import 'package:turista/src/utils/my_colors.dart';

class CustomCaracteristicas extends StatelessWidget {

  final String? text;

  const CustomCaracteristicas({this.text,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!,style: TextStyle(color: MyColors.grey),),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 150,
          height: 1,
          color: MyColors.grey,
        )
      ],
    );
  }
}
