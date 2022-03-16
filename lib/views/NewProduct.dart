import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:artisanswalis/Providers/OrderProvider.dart';
import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomShapes.dart';
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/Styles/CustomTypology.dart';
import 'package:artisanswalis/data/Product.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Styles/InputsFields.dart';

class NewProduct extends StatefulWidget {
  const NewProduct({Key? key}) : super(key: key);

  @override
  State<NewProduct> createState() => _NewProductState();
}

class _NewProductState extends State<NewProduct> {



  Product product = Product(idArtisan: "5ySE7UusKLf8sDYHkuyX",
                        description: "a",idProduct: "a",ingredients: "a",
                        name: "",picture: "a",price: 0,status: "In progress");

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
              child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                        child: Container(
                          child: Text(strNewProduct,style:textStyleSign(context)),
                          margin: const EdgeInsets.only(top: 8,left: 8,right: 8,bottom: 16),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10000),
                              color: Colors.redAccent,
                              border: Border.all(color: Theme.of(context).dividerColor , width: 3 , style: BorderStyle.solid)
                          ),
                          child: CircleAvatar(
                            radius:70,
                            backgroundColor: Theme.of(context).dividerColor,
                            backgroundImage: const AssetImage("assets/images/product.jpg"),
                          ),
                        ),
                      ),
                      inputFieldProduct(context ,strNameProductHint,product, 0),
                      inputFieldProduct(context ,strPriceHint,product ,1),

                      inputFieldProduct(context ,strDescriptionHint,product ,2),
                      inputFieldProduct(context ,strIngredientsHint,product ,3),

                      Container(
                        margin: const EdgeInsets.all(8),
                        child: ElevatedButton.icon(
                          onPressed: (){
                                  OrderProvider().addProduct(product);
                                   Navigator.popAndPushNamed(context, '/home');
                                  },
                          icon: Icon(Iconsax.box_add , color: oceanAccentColor,),
                          label: Text(strAddProductBtn,style:textStyleButton(context),),
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
            )),
      ),
    );
  }
}
