import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:finalnotes/widget/textfiled.dart';
import 'package:flutter/material.dart';

class CreateNote extends StatefulWidget {
  @override
  _CreateNoteState createState() => _CreateNoteState();
}

class _CreateNoteState extends State<CreateNote> {
  late TextEditingController _title;
  late TextEditingController _desc;
  String? _titleError;
  String? _descError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _title=TextEditingController();
    _desc=TextEditingController();
  }
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
              ),
              body: Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.scaleWidth(25),
                    right: SizeConfig.scaleWidth(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextCustom(
                      'New Note',
                      'nun',
                      FontWeight.w700,
                      SizeConfig.scaleTextFont(30),
                      TEXT_TEXTFILED,
                      TextAlign.center,
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(7),
                    ),
                    TextCustom(
                      'Create note',
                      'rob',
                      FontWeight.w200,
                      SizeConfig.scaleTextFont(18),
                      TEXTSPAN,
                      TextAlign.center,
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(45),
                    ),
                    TextFiledCustm(
                        INDECTOR_Color,
                        'Note Tile',
                        SizeConfig.scaleTextFont(22),
                        FontWeight.w300,
                        'rob',
                        SizeConfig.scaleTextFont(22),
                        FontWeight.w400,
                        'rob',
                        TEXT_TEXTFILED,
                        false,_title,_titleError),
                    SizedBox(
                      height: SizeConfig.scaleHeight(16),
                    ),
                    TextFiledCustm(
                        INDECTOR_Color,
                        'Description',
                        SizeConfig.scaleTextFont(22),
                        FontWeight.w300,
                        'rob',
                        SizeConfig.scaleTextFont(22),
                        FontWeight.w400,
                        'rob',
                        TEXT_TEXTFILED,
                        false,_desc,_descError),
                    SizedBox(
                      height: SizeConfig.scaleHeight(35),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(double.infinity, SizeConfig.scaleHeight(53)),
                          primary: BUTTON_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/aboutapp');
                      },
                      child: TextCustom(
                        'Save',
                        'rob',
                        FontWeight.w600,
                        SizeConfig.scaleTextFont(20),
                        CARD_SINGIN,
                        TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
