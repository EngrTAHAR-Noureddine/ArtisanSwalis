import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/Styles/CustomTypology.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        width: MediaQuery.of(context).size.width,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10000),
                  color: Colors.redAccent,
                  border: Border.all(color: Theme.of(context).dividerColor , width: 3 , style: BorderStyle.solid)
                ),
                child: CircleAvatar(
                    radius:70,
                    backgroundColor: Theme.of(context).dividerColor,
                    backgroundImage: const AssetImage("assets/images/man.jpeg"),
                ),
              ),

              Container(
                  margin: const EdgeInsets.all(16),
                  child: Text("Artisan 01" , style:textStyleName(context),) ),
              Container(
                  margin: const EdgeInsets.all(8),
                  child: Text("root@root.com" , style:textStyleEmail(context),) ),
              Container(
                  margin: const EdgeInsets.all(8),
                  child: Text("02-03-1989" , style:textStyleInfo(context),) ),
              Container(
                  margin: const EdgeInsets.all(8),
                  child: Text("Oued Smar, El harrache,Alger" , style:textStyleInfo(context),) ),
              Container(
                  margin: const EdgeInsets.all(16),
                  child: Text("(213)658091199" , style:textStyleInfo(context),) ),
              ElevatedButton.icon(
                onPressed: () {
                  late FirebaseMessaging messaging;
                  messaging = FirebaseMessaging.instance;
                  messaging.subscribeToTopic("5ySE7UusKLf8sDYHkuyX");
                  Navigator.popAndPushNamed(context, '/login');
                },
                icon: Icon(Iconsax.profile_circle , color: oceanAccentColor,),
                label: Text(strLogoutBtn,style:textStyleButton(context),),
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
          ),
        ),
      ),
    );
  }
}
