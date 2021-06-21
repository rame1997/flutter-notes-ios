import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/container_profile.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:finalnotes/widget/textfiled.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;
  late TextEditingController _phone;
  String? _firstNameError;
  String? _lastNameError;
  String? _emailError;
  String? _phoneError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstName=TextEditingController(text: 'Momen');
    _lastName=TextEditingController(text: 'Sisalem');
    _email=TextEditingController(text: 'momen.sisalem@gmail.com');
    _phone=TextEditingController();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _phone.dispose();
    super.dispose();
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
                  title: Padding(
                    padding: EdgeInsets.only(right: SizeConfig.scaleWidth(60)),
                    child: Center(
                      child: TextCustom(
                        'Profile',
                        'quick',
                        FontWeight.w700,
                        SizeConfig.scaleTextFont(22),
                        TEXT_CATEGORIES,
                        TextAlign.center,
                      ),
                    ),
                  ),
                ),
                body: Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.scaleWidth(25),
                      right: SizeConfig.scaleWidth(25)),
                  child: Column(children: [
                    SizedBox(
                      height: SizeConfig.scaleHeight(15),
                    ),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      shadowColor: SUBTITEL_LAUNCH,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: SizeConfig.scaleHeight(25),
                          child: TextCustom(
                            'M',
                            'quick',
                            FontWeight.w600,
                            SizeConfig.scaleTextFont(20),
                            Colors.white,
                            TextAlign.center,
                          ),
                        ),
                        title: TextCustom(
                          'Momen Sisalem',
                          'quick',
                          FontWeight.w600,
                          SizeConfig.scaleTextFont(13),
                          TEXT_LIST_CATEGORIES,
                          TextAlign.left,
                        ),
                        subtitle: TextCustom(
                          'momen.sisalem@gmail.com',
                          'quick',
                          FontWeight.w600,
                          SizeConfig.scaleTextFont(12),
                          SUB_TEXT_LIST_CATEGORIES,
                          TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(15),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        containerProfile('Categories', '14'),
                        containerProfile('Done Notes', '14'),
                        containerProfile('Waiting Notes', '14'),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(15),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.scaleWidth(21),
                          right: SizeConfig.scaleWidth(21),
                          top: SizeConfig.scaleHeight(25)),
                      child: Column(
                        children: [
                          TextFiledCustm(
                              INDECTOR_Color,
                              'FirstName',
                              SizeConfig.scaleTextFont(20),
                              FontWeight.w700,
                              'rob',
                              SizeConfig.scaleTextFont(22),
                              FontWeight.w700,
                              'rob',
                              TEXT_TEXTFILED,
                              false,_firstName,_firstNameError),
                          SizedBox(
                            height: SizeConfig.scaleHeight(16),
                          ),
                          TextFiledCustm(
                              INDECTOR_Color,
                              'LastName',
                              SizeConfig.scaleTextFont(20),
                              FontWeight.w700,
                              'rob',
                              SizeConfig.scaleTextFont(22),
                              FontWeight.w400,
                              'rob',
                              TEXT_TEXTFILED,
                              false,_lastName,_lastNameError),
                          SizedBox(
                            height: SizeConfig.scaleHeight(16),
                          ),
                          TextFiledCustm(
                              INDECTOR_Color,
                              'momen.sisalem@gmail.com',
                              SizeConfig.scaleTextFont(20),
                              FontWeight.w700,
                              'rob',
                              SizeConfig.scaleTextFont(22),
                              FontWeight.w400,
                              'rob',
                              TEXT_TEXTFILED,
                              false,
                            _email,
                            _emailError
                          ),
                          SizedBox(
                            height: SizeConfig.scaleHeight(16),
                          ),
                          TextFiledCustm(
                              INDECTOR_Color,
                              'Phone',
                              SizeConfig.scaleTextFont(22),
                              FontWeight.w300,
                              'rob',
                              SizeConfig.scaleTextFont(22),
                              FontWeight.w400,
                              'rob',
                              TEXT_TEXTFILED,
                              false,
                          _phone,_phoneError),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.scaleHeight(30),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(double.infinity, SizeConfig.scaleHeight(53)),
                          primary: BUTTON_COLOR,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/createcategory');
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
                  ]),
                ))));
  }
}
