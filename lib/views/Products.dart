import 'package:artisanswalis/Providers/OrderProvider.dart';
import 'package:artisanswalis/Styles/CustomColors.dart';
import 'package:artisanswalis/Styles/CustomWidgets.dart';
import 'package:artisanswalis/data/Order.dart';
import 'package:artisanswalis/data/Product.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../Styles/CustomShapes.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

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
        actions: [
          IconButton(
            onPressed: ()=>{
              Navigator.pushNamed(context, '/newProduct')
            },
            icon: const Icon(Iconsax.box_add),
            iconSize: 30,
          ),
        ],
      ),

      body: Container(
          padding: const EdgeInsets.only(top: 10, bottom: 60),
          decoration: decorationBody(context),
          child: RefreshIndicator(
            onRefresh: ()async{
              OrderProvider().fctListProduct();
            },
            color: Theme.of(context).primaryColor,
            child: StreamBuilder(
                stream: OrderProvider().fctListProduct(),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                  if(snapshot.connectionState == ConnectionState.done){
                    List<Product>? list = snapshot.data as List<Product>?;
                    if(list!= null && list.isNotEmpty){
                      return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: list.length,
                          padding: const EdgeInsets.all(10),
                          itemBuilder:(BuildContext context, int index){
                            return itemStatusProducts(context , list[index]);
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
      ),
    );
  }
}
