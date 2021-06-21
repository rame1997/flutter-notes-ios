import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:flutter/material.dart';

import '../uitilte/colors.dart';

class AboutApp extends StatefulWidget {
  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/launch_back.png'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              padding: EdgeInsets.only(
                  left: SizeConfig.scaleWidth(27),
                  top: SizeConfig.scaleHeight(5)),
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
              color: Colors.black,
            ),
            title: Padding(
              padding: EdgeInsets.only(right: SizeConfig.scaleWidth(60)),
              child: Center(
                child: TextCustom(
                  'About App',
                  'quick',
                  FontWeight.w700,
                  SizeConfig.scaleTextFont(22),
                  TEXT_CATEGORIES,
                  TextAlign.center,
                ),
              ),
            ),
          ),
          body: Stack(
            children: [
              Center(
                child: Container(
                  height: SizeConfig.scaleHeight(250),
                  width: SizeConfig.scaleWidth(250),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(
                          color: BUTTON_COLOR,
                          width: SizeConfig.scaleWidth(5))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'images/avater_launch.png',
                        height: SizeConfig.scaleHeight(120),
                      ),
                      TextCustom(
                          'My Notes',
                          'nun',
                          FontWeight.w700,
                          SizeConfig.scaleTextFont(30),
                          TITEL_LAUNCH,
                          TextAlign.center),
                      TextCustom(
                          'For Organized Life',
                          'rob',
                          FontWeight.w200,
                          SizeConfig.scaleTextFont(15),
                          SUBTITEL_LAUNCH,
                          TextAlign.center),
                    ],
                  ),
                ),
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
        ),
      ),
    );
  }
}
