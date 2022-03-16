import 'dart:convert';
import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/Styles/CustomTypology.dart';
import 'package:artisanswalis/data/Product.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../Providers/OrderProvider.dart';
import '../data/Order.dart';



Widget itemActionsWidget(BuildContext context, Order order){


  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    decoration: decorationBoxGbItem(context),
    child: Column(
      children: [
        Container(
          decoration: decorationBoxSPItem(context),
          child: Row(
            children: [
              Container(
                  width: 150,
                  decoration: decorationBoxImg(context),
                  child: Image.memory(base64Decode(order.pictureProduct))
              ),
              Container(

                padding: const EdgeInsets.all(8.0),
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(order.nameProduct, style: textStyleTitleItem(context)),
                    Text(order.orderDate, style: textStyleSubtitle_1Item(context)),
                    const SizedBox(height: 5,),
                    Text("Quantity : ${order.quantity}", style:  textStyleSubtitle_2Item(context)),
                  ],
                ),
              )
            ],
          ),
        ),
         (order.state == statusOfProduct[0]) ?
                  Container(
                    color: Colors.transparent,
                    padding: const EdgeInsets.only(right: 10 , bottom: 5, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton.icon(
                          onPressed: (){
                            OrderProvider().acceptOrder(order);

                          },
                          icon: Icon(Icons.done , color: oceanAccentColor,),
                          label: Text(accepteBtn,style:textStyleButton(context),),
                          style:  ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                              backgroundColor:MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              )
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          child: Text(rejectBtn, style: TextStyle(color: Theme.of(context).primaryColor),),
                          onPressed: (){
                            OrderProvider().rejectOrder(order);
                          },
                          style:  ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                              backgroundColor:MaterialStateProperty.all<Color>(Colors.transparent),

                          ),
                        ),
                      ],
                    ),
                  )
               : Container()
      ],
    ),

  );
}

Widget itemStatusOrders(BuildContext context, Order order){
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    decoration: decorationBoxGbItem(context),
    child: Column(
      children: [
        Container(
          decoration: decorationBoxSPItem(context),
          child: Row(
            children: [
              Container(
                  width: 150,
                  decoration: decorationBoxImg(context),
                  child: Image.memory(base64Decode(order.pictureProduct))
              ),
              Container(

                padding: const EdgeInsets.all(8.0),
                height: 150,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(order.nameProduct, style: textStyleTitleItem(context)),
                      Text(order.orderDate, style: textStyleSubtitle_1Item(context)),
                      const SizedBox(height: 5,),
                      Text("Quantity : ${order.quantity}", style:  textStyleSubtitle_2Item(context)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.only(right: 10 , bottom: 5, top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                onPressed: ()=> {
                  OrderProvider().finishOrder(order)
                },
                icon: Icon(Icons.done , color: oceanAccentColor,),
                label: Text(doneBtn,style:textStyleButton(context),),
                style:  ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    backgroundColor:MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    )
                ),
              )
            ],
          ),
        )
      ],
    ),

  );
  }


List<Icon> listIcons = [
  Icon(Iconsax.refresh_circle , color: oceanAccentColor,),
  Icon(Icons.done , color: oceanAccentColor,),
  Icon(Icons.close , color: oceanAccentColor,),
];
List<Color> listColors = [
  Colors.lightBlueAccent,
  Colors.greenAccent,
  Colors.redAccent
];



Widget itemStatusProducts(BuildContext context, Product product){



  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    decoration: decorationBoxGbItem(context),
    child: Column(
      children: [
        Container(
          decoration: decorationBoxSPItem(context),
          child: Row(
            children: [
              Container(
                  width: 150,
                  decoration: decorationBoxImg(context),
                  child: Image.memory(base64Decode(product.picture))
              ),
              Container(

                padding: const EdgeInsets.all(8.0),
                height: 150,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name, style: textStyleTitleItem(context)),
                      Text(product.description, style: textStyleSubtitle_1Item(context)),
                      const SizedBox(height: 5,),
                      Text("Price : ${product.price}", style:  textStyleSubtitle_2Item(context)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.transparent,
          padding: const EdgeInsets.only(right: 10 , bottom: 5, top: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                onPressed: null,
                icon:listIcons[statusOfProduct.indexOf(product.status)],
                label: Text(product.status,style:textStyleButton(context),),
                style:  ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    backgroundColor:MaterialStateProperty.all<Color>(listColors[0]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    )
                ),
              )
            ],
          ),
        )
      ],
    ),

  );
}