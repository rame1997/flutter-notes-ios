import 'package:finalnotes/uitilte/colors.dart';
import 'package:flutter/material.dart';
class TextFiledCustm extends StatelessWidget {
 Color indectorColor;
 String hintText;
 double hintFontSize;
 FontWeight hintFontWeight;
 String hintFontFamily;
 double textFontSize;
 FontWeight textFontWeight;
 String textFontFamily;
 Color textColor;
bool obscureText;
 TextEditingController textEditingController;
 String ?error;
 TextFiledCustm(
      this.indectorColor,
      this.hintText,
      this.hintFontSize,
      this.hintFontWeight,
      this.hintFontFamily,
      this.textFontSize,
      this.textFontWeight,
     this.textFontFamily,
      this.textColor,
  this.obscureText,this.textEditingController,this.error);

  @override
  Widget build(BuildContext context) {
    return TextField(
controller: textEditingController,
      decoration: InputDecoration(
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color:indectorColor //INDECTOR_Color
               ,
            )),
        errorText: error,
        errorMaxLines: 1,
        // errorStyle: ,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 1,
            color: Colors.red,
          ),
        ),
        hintText: hintText//'Username'
        ,
        hintStyle: TextStyle(
            fontSize: hintFontSize ,
            fontWeight: hintFontWeight,
            fontFamily:hintFontFamily ),
      ),
      style: TextStyle(
          fontSize: textFontSize,
          fontWeight: textFontWeight,
          fontFamily: textFontFamily,//'rob'
          color: textColor),
      textCapitalization: TextCapitalization.words,
      cursorColor: cursor_Color,
      obscureText: obscureText,

    );
  }
}
