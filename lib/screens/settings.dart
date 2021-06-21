import 'package:finalnotes/models/demo_data_setting.dart';
import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  List<Setting> setting = set;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
            decoration: BoxDecoration(color: Colors.white),
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
                  padding: const EdgeInsets.only(right: 60),
                  child: Center(
                    child: TextCustom(
                      'Settings',
                      'quick',
                      FontWeight.w700,
                      SizeConfig.scaleTextFont(22),
                      TEXT_CATEGORIES,
                      TextAlign.center,
                    ),
                  ),
                ),
              ),
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: SizeConfig.scaleHeight(15),
                  ),
                  CircleAvatar(
                    radius: SizeConfig.scaleHeight(35),
                    backgroundColor: BUTTON_COLOR,
                    child: TextCustom(
                      'M',
                      'quick',
                      FontWeight.w700,
                      SizeConfig.scaleTextFont(26),
                      Colors.white,
                      TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.scaleHeight(8),
                  ),
                  TextCustom(
                    'Momen Sisalem',
                    'quick',
                    FontWeight.w600,
                    SizeConfig.scaleTextFont(15),
                    TEXT_LIST_CATEGORIES,
                    TextAlign.center,
                  ),
                  TextCustom(
                    'momen.sisalem@gmail.com',
                    'quick',
                    FontWeight.w600,
                    SizeConfig.scaleTextFont(13),
                    SUB_TEXT_LIST_CATEGORIES,
                    TextAlign.center,
                  ),
                  SizedBox(height: SizeConfig.scaleHeight(10)),
                  Divider(
                    endIndent: SizeConfig.scaleWidth(45),
                    indent: SizeConfig.scaleWidth(45),
                    color: DIVEDER,
                    thickness: SizeConfig.scaleHeight(1),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.scaleWidth(18),
                        right: SizeConfig.scaleWidth(18),
                        top: SizeConfig.scaleHeight(25)),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: setting.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              shadowColor: SUBTITEL_LAUNCH,
                              child: Row(
                                children: [
                                  Container(
                                    height: SizeConfig.scaleHeight(70),
                                    width: SizeConfig.scaleWidth(5),
                                    decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? BUTTON_COLOR
                                            : Colors.white),
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      leading: CircleAvatar(
                                        radius: SizeConfig.scaleHeight(25),
                                        child: IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              setting[index].icon,
                                              color: Colors.white,
                                              size: 16,
                                            )),
                                      ),
                                      title: TextCustom(
                                        setting[index].title,
                                        'quick',
                                        FontWeight.w600,
                                        SizeConfig.scaleTextFont(13),
                                        TEXT_LIST_CATEGORIES,
                                        TextAlign.left,
                                      ),
                                      subtitle: TextCustom(
                                        setting[index].subTitle,
                                        'quick',
                                        FontWeight.w600,
                                        SizeConfig.scaleTextFont(12),
                                        SUB_TEXT_LIST_CATEGORIES,
                                        TextAlign.left,
                                      ),
                                      trailing: Transform(
                                        alignment: Alignment.center,
                                        transform: Matrix4.rotationY(math.pi),
                                        child: IconButton(
                                            onPressed:() {Navigator.pushNamed(context, '${setting[index].onpress}');},
                                            icon: Icon(
                                              Icons.arrow_back_ios,
                                              color: Colors.black,
                                              size: 20,
                                            )),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: SizeConfig.scaleHeight(70),
                                    width: SizeConfig.scaleWidth(5),
                                    decoration: BoxDecoration(
                                        color: index % 2 == 0
                                            ? Colors.white
                                            : BUTTON_COLOR),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),

//
            )));
  }
}
