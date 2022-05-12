import 'package:flutter/material.dart';
import 'package:turista/src/utils/my_colors.dart';

class CustomAlgun extends StatelessWidget {
  const CustomAlgun({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Service adiconal', style: TextStyle(color: MyColors.grey,fontSize: 12),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '200 USD', style: TextStyle(color: MyColors.grey,fontSize: 12),
                ),
              ],
            ),
            const Spacer(),
            Icon(Icons.add,color: MyColors.grey,)
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Divider(
            thickness: 1.5,
          ),
        )
      ],
    );
  }
}
