import 'package:artisanswalis/data/Product.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Styles/CustomString.dart';
import '../data/Order.dart';

class OrderProvider with ChangeNotifier{

  List<Order> listOrder = [];

  Stream<List<Order>?> fctListOrder() async*{
    listOrder = [];

    yield await FirebaseFirestore.instance
        .collection('Order')
        .get()
        .then((QuerySnapshot querySnapshot) {

      for (var doc in querySnapshot.docs) {
        print(doc["idOrder"]);

        if(doc["state"] == statusOfProduct[0] ){
          listOrder.add(Order(
            idArtisan: doc["idArtisan"],
            idOrder: doc["idOrder"],
            idUser: doc["idUser"],
            nameProduct: doc["nameProduct"],
            orderDate: doc["orderDate"],
            pictureProduct: doc["pictureProduct"],
            priceProduct: doc["priceProduct"],
            quantity: doc["quantity"],
            state: doc["state"],
          ));
        }


      }

      return listOrder;

    }).onError((error, stackTrace) => []);

  }

  Stream<List<Product>?> fctListDelivery() async*{
    List<Product> listProduct = [];

    yield await FirebaseFirestore.instance
        .collection('Product')
        .get()
        .then((QuerySnapshot querySnapshot) {

      for (var doc in querySnapshot.docs) {
        print(doc["idProduct"]);

          listProduct.add(Product(
            idArtisan: doc["idArtisan"],
            idProduct: doc["idProduct"],
            description: doc["description"],
            ingredients: doc["ingredients"],
            name: doc["name"],
            picture: doc["picture"],
            price: doc["price"],
            status: doc["status"],
          ));


      }

      return listProduct;

    }).onError((error, stackTrace) => []);

  }


  Future<void> rejectOrder(Order order)async{
    await FirebaseFirestore.instance
        .collection('Order')
        .doc(order.idOrder).delete().then((value){
          print("Done");
          notifyListeners();
        }).catchError((err)=>print("error"));
  }
  Future<void> acceptOrder(Order order)async{
    await FirebaseFirestore.instance
        .collection('Order')
        .doc(order.idOrder).update({"state": statusOfProduct[1]}).then((value) {
      print("Done");
      notifyListeners();
    }).catchError((err)=> print("error") );
  }

  Future<void> finishOrder(Order order)async{
    await FirebaseFirestore.instance
        .collection('Order')
        .doc(order.idOrder).update({"state": statusOfProduct[3]}).then((value) {
      print("Done");
      notifyListeners();
    }).catchError((err)=> print("error") );
  }



}