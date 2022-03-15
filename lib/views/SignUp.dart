import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomTypology.dart';
import 'package:artisanswalis/Styles/InputsFields.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}


class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Image.asset("assets/images/swalis_transparent.png", height: 120,  color: oceanAccentColor),
        ),
      ),
      body: Container(
        decoration: decorationBody(context),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30, right: 8, left: 8, bottom: 5),
              child: Column(

                children: [
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                              child: Text(strCreateAccount,style:textStyleSign(context)),
                              margin: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 16),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: inputFieldSign(context ,strNameHint )),
                              Expanded(child: inputFieldSign(context , strSurnameHint)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(child: inputFieldSign(context ,strBirthdayHint )),
                              Expanded(child: inputFieldSign(context , strAddressHint)),
                            ],
                          ),
                          inputFieldSign(context ,strPhoneHint),
                          inputFieldLogin(context , false),

                          inputFieldLogin(context , true),
                          inputFieldSign(context ,strConfirmPasswordHint),

                          Container(
                            margin: const EdgeInsets.all(8),
                            child: ElevatedButton.icon(
                              onPressed: ()=>(
                                  Navigator.popAndPushNamed(context, '/home')
                              ),
                              icon: Icon(Iconsax.empty_wallet , color: oceanAccentColor,),
                              label: Text(strRegisterBtn,style:textStyleButton(context),),
                              style:  ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
                                  backgroundColor:MaterialStateProperty.all<Color>(Theme.of(context).buttonColor),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                      )
                                  )
                              ),
                            ),
                          )
                        ],
                      )),
                  TextButton(
                      onPressed: ()=>(
                          Navigator.popAndPushNamed(context, '/login')
                      ),

                      child: Text(strAlreadyHaveAccount,style:textStyleHaveAccount(context),))
                ],
              ),
            )),
      ),
    );
  }
}
