import 'package:artisanswalis/Providers/OrderProvider.dart';
import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/firebase/MyFirebase.dart';
import 'package:artisanswalis/views/Login.dart';
import 'package:artisanswalis/views/NewProduct.dart';
import 'package:artisanswalis/views/Home.dart';
import 'package:artisanswalis/views/SignUp.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> _messageHandler(RemoteMessage message) async {
  print('background message ${message.notification!.body}');

}


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseMessaging.onBackgroundMessage(_messageHandler);
 runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: MyFirebase().init(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        return MultiProvider(providers: [
          ChangeNotifierProvider<OrderProvider>(
            create: (context) => OrderProvider(), ),

        ],
        child: Builder(builder: (context){
          return MaterialApp(
            title: 'Swalis',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(

              appBarTheme: AppBarTheme(
                  backgroundColor: mainAccentColor,
                  centerTitle:true
              ),

              brightness: Brightness.light,
              indicatorColor: mainAccentColor,
              backgroundColor: oceanAccentColor,
              cardColor: iconLightColor,
              buttonColor: oceanBlue500Color,
              canvasColor: Colors.white,
              dividerColor: surfaceLightColor,
              hoverColor: surfaceDarkColor,

              splashColor: oceanBlue500Color,


              primaryColor:oceanBlue500Color,
              primaryColorLight: oceanBlue700Color,
              secondaryHeaderColor: oceanAccentColor,
              bottomAppBarColor: royalBlackColor,




            ),
            darkTheme: ThemeData(
              appBarTheme: const AppBarTheme(
                  backgroundColor: Colors.black,
                  centerTitle:true
              ),
              buttonColor: oceanBlue200Color,
              backgroundColor: royalBlackColor,
              brightness: Brightness.dark,
              indicatorColor: mainAccentColor,
              cardColor: iconDarkColor,
              canvasColor: const Color(0x10FFFFFF),
              dividerColor : surfaceDarkColor,
              hoverColor: surfaceLightColor,

              splashColor: oceanBlue500Color,
              primaryColorLight: oceanBlue700Color,
              bottomAppBarColor: royalBlackColor,
              primaryColor: mainAccentColor,

            ),
            themeMode: ThemeMode.system,
            home: const Login(),
            routes: {
              '/newProduct' : (context) => const NewProduct(),
              '/login' : (context) => const Login(),
              '/register' : (context) => const SignUp(),
              '/home' : (context) => const Home()
            },
          );
        }),);


      }
    );
  }
}

