import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../utils/global.dart';
class productscreen extends StatefulWidget {
  const productscreen({super.key});

  @override
  State<productscreen> createState() => _productscreenState();
}

class _productscreenState extends State<productscreen> {
  Map m1 = {};
  @override
  Widget build(BuildContext context) {
    m1 = ModalRoute
        .of(context)!
        .settings
        .arguments as Map;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            Icon(Icons.shopping_basket),
          ],
        ),
        body: Column(

            children: [
              Text("Shoping\n cart",
                style: TextStyle(fontSize: 50, color: Colors.black,),),
              Column(
                  children: List.generate(cartList.length, (index) =>
                      InkWell(
                        onTap: () {
                          Map m1 = FastfoodList[index];
                          Navigator.pushNamed(
                              context, 'product', arguments: m1);
                        },
                        child: Container(
                          height: 100,
                          width: 400,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 2,
                                    blurRadius: 5)
                              ]
                          ),
                          child: Image.asset(
                            "${FastfoodList[index]['images']}", height: 100,
                            width: 100,
                          ),
                        ),
                      ),

                  )
              )

            ]
        ),

      ),

    );
  }
}
