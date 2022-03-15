// ignore_for_file: file_names

import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomWidgets.dart';
import 'package:flutter/material.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {

  var list = [1,2,3,4,5,6,7,8,10];

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
        padding: const EdgeInsets.only(top: 10, bottom: 60),
        decoration: decorationBody(context),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: list.length,
          padding: const EdgeInsets.all(10),
          itemBuilder:(BuildContext context, int ind){
            return itemActionsWidget(context);
          }
        )
      ),
    );
  }

}
