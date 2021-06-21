import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:flutter/material.dart';

import '../uitilte/colors.dart';

class Launch extends StatefulWidget {
  @override
  _LaunchState createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/singin');
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/launch_back.png',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/avater_launch.png',
                height: SizeConfig.scaleHeight(120),
              ),
              TextCustom('My Notes', 'nun', FontWeight.w700,
                  SizeConfig.scaleTextFont(30), TITEL_LAUNCH, TextAlign.center),
              TextCustom(
                  'For Organized Life',
                  'rob',
                  FontWeight.w200,
                  SizeConfig.scaleTextFont(15),
                  SUBTITEL_LAUNCH,
                  TextAlign.center),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: SizeConfig.scaleHeight(10),
            child: TextCustom(
                ' iOS Course - Notes App V1.0',
                'rob',
                FontWeight.w200,
                SizeConfig.scaleTextFont(15),
                SUBTITEL_LAUNCH,
                TextAlign.center),
          ),
        ],
      ),
    );
  }
}
