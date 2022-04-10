import 'package:flutter/material.dart';
import 'package:turista/src/utils/my_colors.dart';
import 'package:turista/src/utils/my_images.dart';

class SwitchToHostingAnimationPage extends StatefulWidget {
  const SwitchToHostingAnimationPage({Key? key}) : super(key: key);

  @override
  _SwtichToHostingAnimationPageState createState() => _SwtichToHostingAnimationPageState();
}

class _SwtichToHostingAnimationPageState extends State<SwitchToHostingAnimationPage>  with SingleTickerProviderStateMixin {
  AnimationController? animationController;


  @override
  void initState() {
    super.initState();
  /*  Future.delayed(Duration(seconds: 3),(){
        Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const SettingsPage(),
                ),
              );
    });*/
    animationController = new AnimationController(
      vsync: this,
      duration: new Duration(seconds: 3),
    );

    animationController!.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightBlue,
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,

            child:  AnimatedBuilder(
              animation: animationController!,
              child:  Container(
                height: 150.0,
                width: 150.0,
                child:  Image.asset('${MyImages.turistaTransparentLogo}'),
              ),
              builder: (BuildContext context, Widget? _widget) {
                return  Transform(
                  //angle: animationController!.value * 1,
                  transform: Matrix4.identity()..rotateY(animationController!.value*6.3),
                  alignment: Alignment.center,
                  child: _widget,
                );
              },
            ),
          ),
          SizedBox(height: 15,),
          Text("Switching to hosting")
        ],
      ),
    );
  }
}
