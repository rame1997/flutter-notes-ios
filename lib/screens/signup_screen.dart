import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:finalnotes/widget/textfiled.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;
  late TextEditingController _phone;
  late TextEditingController _password;
  String? _firstNameError;
  String? _lastNameError;
  String? _emailError;
  String? _phoneError;
  String? _passwordError;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firstName=TextEditingController();
    _lastName=TextEditingController();
    _email=TextEditingController();
    _phone=TextEditingController();
    _password=TextEditingController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _phone.dispose();
    _password.dispose();
    super.dispose();
  }
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
          ),
          body: Padding(
            padding: EdgeInsets.only(
                left: SizeConfig.scaleWidth(27),
                right: SizeConfig.scaleWidth(27)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: SizeConfig.scaleHeight(26),
                ),
                TextCustom(
                    'Sign Up',
                    'nun',
                    FontWeight.w700,
                    SizeConfig.scaleTextFont(30),
                    TITEL_LAUNCH,
                    TextAlign.center),
                SizedBox(
                  height: SizeConfig.scaleHeight(7),
                ),
                TextCustom(
                    'Create an account',
                    'rob',
                    FontWeight.w200,
                    SizeConfig.scaleTextFont(18),
                    SUBTITEL_SINGIN,
                    TextAlign.center),
                SizedBox(
                  height: SizeConfig.scaleHeight(53),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: CARD_SINGIN,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 6,
                            spreadRadius: 3,
                            color: CARD_SHADOW)
                      ]),
                  height: SizeConfig.scaleHeight(351),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.scaleWidth(21),
                        right: SizeConfig.scaleWidth(21),
                        top: SizeConfig.scaleHeight(25)),
                    child: Column(
                      children: [
                        TextFiledCustm(
                            INDECTOR_Color,
                            'FirstName',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w300,
                            'rob',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w400,
                            'rob',
                            TEXT_TEXTFILED,
                            false,_firstName,_firstNameError),
                        SizedBox(
                          height: SizeConfig.scaleHeight(16),
                        ),
                        TextFiledCustm(
                            INDECTOR_Color,
                            'LastName',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w300,
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
                            'Email',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w300,
                            'rob',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w400,
                            'rob',
                            TEXT_TEXTFILED,
                            false,_email,_emailError),
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
                        SizedBox(
                          height: SizeConfig.scaleHeight(16),
                        ),
                        TextFiledCustm(
                          INDECTOR_Color,
                          'Password',
                          SizeConfig.scaleTextFont(22),
                          FontWeight.w300,
                          'rob',
                          SizeConfig.scaleTextFont(22),
                          FontWeight.w400,
                          'rob',
                          TEXT_TEXTFILED,
                          true,
                          _password,
                          _passwordError
                        ),
                      ],
                    ),
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
                    Navigator.pushNamed(context, '/categories');
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
        ),
      ),
    );
  }
}
