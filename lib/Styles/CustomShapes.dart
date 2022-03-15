import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:flutter/material.dart';


BoxDecoration decorationBoxBottomNav(BuildContext context){ //And Image of item
  return  BoxDecoration(
    color: Theme.of(context).dividerColor,
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  );
}

BoxDecoration decorationBoxGbItem(BuildContext context){ //And Image of item
  return  BoxDecoration(
    color:Theme.of(context).canvasColor,
    borderRadius: const BorderRadius.all(Radius.circular(25)),
  );
}
BoxDecoration decorationBoxSPItem(BuildContext context){ //And Image of item
  return  BoxDecoration(
    color: Theme.of(context).canvasColor,
    borderRadius: const BorderRadius.all(Radius.circular(25)),
  );
}



BoxDecoration decorationBoxImg(BuildContext context){ //And Image of item
  return  BoxDecoration(
    color: Theme.of(context).dividerColor,
    borderRadius: const BorderRadius.all(Radius.circular(25)),
  );
}


ButtonStyle decorationButtonAccept(var acceptedButton ){
  return  OutlinedButton.styleFrom(
    shape: const StadiumBorder(),
    padding: EdgeInsets.only(left: 16,right: 16, top: 8,bottom: 8),
    backgroundColor: (acceptedButton == true)? bgAcceptButtonColor:bgRejectButtonColor,
    side: const BorderSide(
        width: 0,
        color: Colors.transparent
    ),
  );
}

BoxDecoration decorationBody(BuildContext context){
  return  BoxDecoration(
    color: Theme.of(context).backgroundColor,
    borderRadius: const BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
  );
}

