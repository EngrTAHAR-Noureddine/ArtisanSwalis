// ignore_for_file: file_names

import 'package:artisanswalis/Providers/OrderProvider.dart';
import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomWidgets.dart';
import 'package:artisanswalis/views/Home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/Order.dart';

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
            child: RefreshIndicator(
              onRefresh: ()async{
                OrderProvider().fctListOrder();
              },
              color: Theme.of(context).primaryColor,
              child: StreamBuilder(
                  stream: OrderProvider().fctListOrder(),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                    if(snapshot.connectionState == ConnectionState.done){
                        List<Order>? list = snapshot.data as List<Order>?;
                      if(list!= null && list.isNotEmpty){
                        return ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: list.length,
                            padding: const EdgeInsets.all(10),
                            itemBuilder:(BuildContext context, int index){
                              return itemActionsWidget(context , list[index]);
                            }
                        );
                      }else{
                        return const Center(
                          child: Text("Empty"),
                        );
                      }

                    }else if(snapshot.hasError){
                      return const Center(
                        child: Text("Problem of connection"),
                      );
                    }else{
                      return Center(
                        child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor,
                        ),
                      );
                    }
                  }),
            )

  /*
            Consumer<OrderProvider>(
                  builder:(context, value, child){
                   return RefreshIndicator(
                       onRefresh: ()async{
                         value.fctListOrder();
                       },
                     color: Theme.of(context).primaryColor,
                     child: StreamBuilder(
                          stream: value.fctListOrder(),
                          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                            if(snapshot.connectionState == ConnectionState.done){

                              if(value.listOrder.isNotEmpty){

                                return ListView.builder(
                                    scrollDirection: Axis.vertical,
                                    itemCount: value.listOrder.length,
                                    padding: const EdgeInsets.all(10),
                                    itemBuilder:(BuildContext context, int index){
                                      return itemActionsWidget(context , value.listOrder[index]);
                                    }
                                );
                              }else{
                                return const Center(
                                  child: Text("Empty"),
                                );
                              }

                            }else if(snapshot.hasError){
                              return const Center(
                                child: Text("Problem of connection"),
                              );
                            }else{
                              return Center(
                                child: CircularProgressIndicator(
                                  color: Theme.of(context).primaryColor,
                                ),
                              );
                            }
                          }),
                   );

                  },
            )

*/
          ),
        );


  }

}
