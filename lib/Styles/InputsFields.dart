
import 'package:artisanswalis/Styles/CustomString.dart';
import 'package:artisanswalis/data/Product.dart';
import 'package:flutter/material.dart';

Widget inputFieldLogin(BuildContext context, bool isObscure){
  return  Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Theme.of(context).canvasColor,

    ),
    margin:const EdgeInsets.all(8),
    child:   TextField(
      enabled: true,
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20),
        hintText: (isObscure)?strPasswordHint:strEmailHint,
        hintStyle: const TextStyle(
          color: Colors.grey,
        )
      ),
      obscureText: isObscure,
      style:  TextStyle(
        color: Theme.of(context).cardColor,
        fontWeight: FontWeight.normal,
        fontSize: 16
      ),
      autocorrect: true,
    ),
  );
}

Widget inputFieldSign(BuildContext context, String customHint){
  return  Container(
    decoration:  BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Theme.of(context).canvasColor,

    ),
    margin:const EdgeInsets.all(8),
    child: TextField(
      enabled: true,
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20),
          hintText: customHint,
          hintStyle: const TextStyle(
            color: Colors.grey,
          )
      ),
      style:  TextStyle(
          color: Theme.of(context).cardColor,
          fontWeight: FontWeight.normal,
          fontSize: 16
      ),
      autocorrect: true,
    ),
  );
}

Widget inputFieldProduct(BuildContext context, String customHint,Product product,int i){
  return  Container(
    decoration:  BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Theme.of(context).canvasColor,

    ),
    margin:const EdgeInsets.all(8),
    child: TextField(
      enabled: true,
      onChanged: (value){
        if(value!=null){
          switch(i){
            case 1 : product.price = int.parse(value); break;
            case 2 : product.description = value; break;
            case 3 : product.ingredients = value; break;
            default : product.name = value; break;
          }
        }
      },
      onSubmitted: (value){
        if(value!=null){
          switch(i){
            case 1 : product.price = int.parse(value); break;
            case 2 : product.description = value; break;
            case 3 : product.ingredients = value; break;
            default : product.name = value; break;
          }
        }
      },
      decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(20),
          hintText: customHint,
          hintStyle: const TextStyle(
            color: Colors.grey,
          )
      ),
      style:  TextStyle(
          color: Theme.of(context).cardColor,
          fontWeight: FontWeight.normal,
          fontSize: 16
      ),
      autocorrect: true,
    ),
  );
}