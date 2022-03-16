import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomTypology.dart';
import 'package:artisanswalis/Styles/InputsFields.dart';
import 'package:artisanswalis/notification/MyFCM.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {

  late FirebaseMessaging messaging;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value){
      print(value);
      MyFCM(customToken:value.toString());
      messaging.subscribeToTopic("5ySE7UusKLf8sDYHkuyX");
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              padding: const EdgeInsets.only(top: 50, right: 10, left: 10, bottom: 10),
              child: Column(

                children: [
                  Expanded(
                      child: Column(
                          children: [
                            Container(
                                child: Text(strLogInto,style:textStyleSign(context)),
                                margin: const EdgeInsets.all(8),
                            ),
                            inputFieldLogin(context , false),

                            inputFieldLogin(context , true),

                            Container(
                                margin: const EdgeInsets.all(16),
                                child: Text(strForgetPassword,style:textStyleForgetPassword(context),
                                )),
                            ElevatedButton.icon(
                              onPressed: ()=>(
                                              Navigator.popAndPushNamed(context, '/home')
                                        ),
                              icon: Icon(Iconsax.empty_wallet , color: oceanAccentColor,),
                              label: Text(strLoginBtn,style:textStyleButton(context),),
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
                            )
                          ],
                        )),
                        TextButton(
                           onPressed: ()=>(
                               Navigator.popAndPushNamed(context, '/register')
                           ),
                          
                            child: Text(strDontHaveAccount,style:textStyleHaveAccount(context),))
                      ],
                    ),
            )),
      ),
    );
  }
}
