import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:flutter/material.dart';

TextStyle textStyleButton(BuildContext context){
  return TextStyle(
    color: oceanAccentColor,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
}

TextStyle textStyleSign(BuildContext context){
  return TextStyle(
      color: Theme.of(context).cardColor,
      fontSize: 24,
      fontWeight: FontWeight.bold,
  );
}

TextStyle textStyleName(BuildContext context){
  return TextStyle(
    color: Theme.of(context).cardColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
}
TextStyle textStyleEmail(BuildContext context){
  return TextStyle(
    color: Theme.of(context).cardColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}
TextStyle textStyleInfo(BuildContext context){
  return TextStyle(
    color: Theme.of(context).cardColor,
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
}

TextStyle textStyleForgetPassword(BuildContext context){
  return TextStyle(
    decoration: TextDecoration.underline,
    color: Theme.of(context).splashColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}

TextStyle textStyleHaveAccount(BuildContext context){
  return TextStyle(
    decoration: TextDecoration.underline,
    color: Theme.of(context).splashColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}


TextStyle textStyleTitleItem(BuildContext context){
  return TextStyle(
    color: Theme.of(context).hoverColor,
    fontWeight: FontWeight.bold,
    fontSize: 18
  );
}
TextStyle textStyleSubtitle_1Item(BuildContext context){
  return TextStyle(
      color: Theme.of(context).hoverColor,
      fontStyle: FontStyle.italic,
      fontSize: 14
  );
}

TextStyle textStyleSubtitle_2Item(BuildContext context){
  return TextStyle(
      color: Theme.of(context).hoverColor,
      fontStyle: FontStyle.normal,
      fontSize: 16
  );
}




