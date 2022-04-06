import 'package:flutter/material.dart';
import 'package:turista/src/utils/my_colors.dart';
import 'package:turista/src/utils/my_strings.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color(0xffa7abab)
                ),
                color: Colors.white
            ),
            child:  Padding(
              padding: const EdgeInsets.only(left: 10,bottom: 0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: MyStrings.searchYourExperiences,
                    hintStyle: const TextStyle(
                        color: Color(0xffdde9e9)
                    ),
                    border: InputBorder.none
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
         Icon(Icons.filter_list,color: MyColors.blueClr,size: 30,)
      ],
    );
  }
}
