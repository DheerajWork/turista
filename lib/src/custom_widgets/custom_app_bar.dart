import 'package:flutter/material.dart';
import 'package:turista/src/utils/my_colors.dart';
import 'package:turista/src/utils/my_images.dart';
import 'package:turista/src/utils/my_strings.dart';
import 'package:turista/src/utils/my_style.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.add_circle_outline,size: 30,color: Colors.transparent,),
            Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  Image.asset(MyImages.turistaLogo,height: 65,width: 65,),
                  Text(MyStrings.turista,style: MyStyles.twentyTwoBoldBlue,)
                ],
              ),
            ),
            const Icon(Icons.add_circle_outline,size: 30,),
          ],
        ),
      ),
    );
  }
}
