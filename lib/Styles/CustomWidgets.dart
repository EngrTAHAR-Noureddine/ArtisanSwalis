import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/Styles/CustomTypology.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

Widget itemActionsWidget(BuildContext context){
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
                  child: Image.asset("assets/images/product.jpg")),
              Container(

                padding: const EdgeInsets.all(8.0),
                height: 150,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title Title", style: textStyleTitleItem(context)),
                      Text("03/12/2022", style: textStyleSubtitle_1Item(context)),
                      const SizedBox(height: 5,),
                      Text("Quantity : 5000", style:  textStyleSubtitle_2Item(context)),
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
                onPressed: (){},
                icon: Icon(Icons.done , color: oceanAccentColor,),
                label: Text(accepteBtn,style:textStyleButton(context),),
                style:  ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.greenAccent),
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
              ElevatedButton.icon(
                onPressed: (){},
                icon: Icon(Icons.close , color: oceanAccentColor,),
                label: Text(rejectBtn,style:textStyleButton(context),),
                style:  ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.redAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        )
                    )
                ),
              ),
            ],
          ),
        )
      ],
    ),

  );
}

Widget itemStatusOrders(BuildContext context){
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
                  child: Image.asset("assets/images/product.jpg")),
              Container(

                padding: const EdgeInsets.all(8.0),
                height: 150,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title Title", style: textStyleTitleItem(context)),
                      Text("03/12/2022", style: textStyleSubtitle_1Item(context)),
                      const SizedBox(height: 5,),
                      Text("Quantity : 5000", style:  textStyleSubtitle_2Item(context)),
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
                onPressed: ()=> {},
                icon: Icon(Icons.done , color: oceanAccentColor,),
                label: Text(doneBtn,style:textStyleButton(context),),
                style:  ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(8)),
                    backgroundColor:MaterialStateProperty.all<Color>(Colors.greenAccent),
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


Widget itemStatusProducts(BuildContext context){



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
                  child: Image.asset("assets/images/product.jpg")),
              Container(

                padding: const EdgeInsets.all(8.0),
                height: 150,
                child: Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Title Title", style: textStyleTitleItem(context)),
                      Text("03/12/2022", style: textStyleSubtitle_1Item(context)),
                      const SizedBox(height: 5,),
                      Text("Quantity : 5000", style:  textStyleSubtitle_2Item(context)),
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
                icon:listIcons[0],
                label: Text(statusOfProduct[0],style:textStyleButton(context),),
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