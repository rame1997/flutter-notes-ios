import 'package:finalnotes/uitilte/colors.dart';
import 'package:finalnotes/uitilte/size_config.dart';
import 'package:finalnotes/widget/text.dart';
import 'package:finalnotes/widget/textfiled.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  @override
  _SingInState createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  late TapGestureRecognizer _tapGestureRecognizer;
  late TextEditingController _userName;
  late TextEditingController _passWord;
  String? _userNameError;
  String? _passwordError;
  @override
  void dispose() {
    // TODO: implement dispose
    _userName.dispose();
    _passWord.dispose();
    super.dispose();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _userName=TextEditingController();
    _passWord=TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer();
    _tapGestureRecognizer.onTap = goToSingIn;
  }

  goToSingIn() {
    Navigator.pushNamed(context, '/singup');
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
    ),
            body: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.scaleWidth(27),
              right: SizeConfig.scaleWidth(27)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: SizeConfig.scaleHeight(106),
              ),
              TextCustom('Sign In', 'nun', FontWeight.w700,
                  SizeConfig.scaleTextFont(30), TITEL_LAUNCH, TextAlign.center),
              SizedBox(
                height: SizeConfig.scaleHeight(8),
              ),
              TextCustom(
                  'Login to start using app',
                  'rob',
                  FontWeight.w200,
                  SizeConfig.scaleTextFont(18),
                  SUBTITEL_SINGIN,
                  TextAlign.center),
              SizedBox(
                height: SizeConfig.scaleHeight(81),
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
                height: SizeConfig.scaleHeight(185),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.scaleWidth(21),
                      right: SizeConfig.scaleWidth(21),
                      top: SizeConfig.scaleHeight(25)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFiledCustm(
                            INDECTOR_Color,
                            'Username',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w300,
                            'rob',
                            SizeConfig.scaleTextFont(22),
                            FontWeight.w400,
                            'rob',
                            TEXT_TEXTFILED,
                            false,_userName,_userNameError),
                        SizedBox(
                          height: SizeConfig.scaleHeight(27),
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
                          _passWord,
                          _passwordError
                        ),
                      ],
                    ),
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
                  'Login',
                  'rob',
                  FontWeight.w600,
                  SizeConfig.scaleTextFont(20),
                  CARD_SINGIN,
                  TextAlign.center,
                ),
              ),
              SizedBox(
                height: SizeConfig.scaleHeight(12),
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                        color: TEXTSPAN,
                        fontSize: SizeConfig.scaleTextFont(18),
                        fontFamily: 'rob',
                        fontWeight: FontWeight.w300),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Don’t have an account? ',
                      ),
                      TextSpan(
                          text: 'Sign up ',
                          style: TextStyle(
                              color: TITEL_LAUNCH,
                              fontSize: SizeConfig.scaleTextFont(18),
                              fontFamily: 'rob',
                              fontWeight: FontWeight.w600),
                          recognizer: _tapGestureRecognizer),
                    ],
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
