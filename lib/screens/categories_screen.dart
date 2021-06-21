import 'package:finalnotes/models/demo_data_categorirs.dart';
import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/settings');
                      },
                      icon: Icon(
                        Icons.settings,
                        color: Colors.black,
                      ))
                ],
                title: Center(
                  child: TextCustom(
                    'Categories',
                    'quick',
                    FontWeight.w600,
                    SizeConfig.scaleTextFont(22),
                    TEXT_CATEGORIES,
                    TextAlign.center,
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/createcategory');
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: SizeConfig.scaleHeight(30),
                    )),
              ),
              body: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(18),
                    right: SizeConfig.scaleWidth(18)),
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding:
                            EdgeInsets.only(bottom: SizeConfig.scaleHeight(10)),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          shadowColor: SUBTITEL_LAUNCH,
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: SizeConfig.scaleWidth(15),
                                    ),
                                    CircleAvatar(
                                      radius: SizeConfig.scaleHeight(25),
                                      child: TextCustom(
                                        'W',
                                        'quick',
                                        FontWeight.w600,
                                        SizeConfig.scaleTextFont(22),
                                        Colors.white,
                                        TextAlign.center,
                                      ),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.scaleWidth(10),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextCustom(
                                          title,
                                          'quick',
                                          FontWeight.w600,
                                          SizeConfig.scaleTextFont(13),
                                          TEXT_LIST_CATEGORIES,
                                          TextAlign.left,
                                        ),
                                        TextCustom(
                                          subTitle,
                                          'quick',
                                          FontWeight.w600,
                                          SizeConfig.scaleTextFont(12),
                                          SUB_TEXT_LIST_CATEGORIES,
                                          TextAlign.left,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                          size: SizeConfig.scaleHeight(16),
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                height: SizeConfig.scaleHeight(70),
                                width: SizeConfig.scaleWidth(25),
                                decoration: BoxDecoration(color: Colors.blue),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/updatecategory');
                                    },
                                    icon: Icon(
                                      Icons.edit,
                                      color: Colors.white,
                                      size: SizeConfig.scaleHeight(16),
                                    )),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )));
  }
}
