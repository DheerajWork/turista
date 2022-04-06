import 'package:flutter/material.dart';
import 'package:turista/src/utils/my_colors.dart';


class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    bool select = true;
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(50), topLeft: Radius.circular(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                select = true;
                // ignore: avoid_print
                print('1');
                setState(() {});
              },
              icon: Icon(
                Icons.home,
                color: select == true ? MyColors.blueClr : Colors.grey,
              )),
          IconButton(
              onPressed: () {
                select = false;
                // ignore: avoid_print
                print('2');
                setState(() {});
              },
              icon: Icon(
                Icons.person,
                color: select == true ? Colors.grey : MyColors.blueClr,
              ))
        ],
      ),
    );
  }
}
