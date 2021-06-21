import 'package:finalnotes/models/demo_data_categorirs_name.dart';
import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:flutter/material.dart';

class CategoryNotes extends StatefulWidget {
  @override
  _CategoryNotesState createState() => _CategoryNotesState();
}

class _CategoryNotesState extends State<CategoryNotes> {
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
                title: Center(
                  child: TextCustom(
                    'Category Name',
                    'quick',
                    FontWeight.w700,
                    SizeConfig.scaleTextFont(22),
                    TEXT_CATEGORIES,
                    null,
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/createnote');
                      },
                      icon: Icon(
                        Icons.add_circle,
                        color: Colors.black,
                      ))
                ],
              ),
              body: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(18),
                    right: SizeConfig.scaleWidth(18),
                    top: SizeConfig.scaleHeight(15)),
                child: ListView.builder(
                    itemCount: 5,
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
                                height: SizeConfig.scaleHeight(115),
                                width: SizeConfig.scaleWidth(4),
                                decoration: BoxDecoration(color: Colors.blue),
                              ),
                              Expanded(
                                child: ListTile(
                                  onLongPress: (){
                                    Navigator.pushNamed(context, '/updatecategory');
                                  },
                                  title: TextCustom(
                                    title,
                                    'quick',
                                    FontWeight.w600,
                                    SizeConfig.scaleTextFont(13),
                                    TEXT_LIST_CATEGORIES,
                                    TextAlign.left,
                                  ),
                                  subtitle: TextCustom(
                                    subTitle,
                                    'quick',
                                    FontWeight.w600,
                                    SizeConfig.scaleTextFont(12),
                                    SUB_TEXT_LIST_CATEGORIES,
                                    TextAlign.left,
                                  ),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.check_circle,
                                        color: index % 2 == 0
                                            ? Colors.green
                                            : Colors.grey,
                                        size: 20,
                                      )),
                                ),
                              ),
                              Container(
                                height: SizeConfig.scaleHeight(115),
                                width: SizeConfig.scaleWidth(4),
                                decoration: BoxDecoration(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            )));
  }
}
