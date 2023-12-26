import 'package:flutter/material.dart';
import 'package:pizaa_app/screen/home_screen/homescreen.dart';
import 'package:pizaa_app/screen/product_screen/productscreen.dart';
import 'package:pizaa_app/screen/cart_screen/cart.dart';
void main()
{
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          routes:{
            "/":(context)=>HomeScreen(),
             "product":(context)=>productscreen(),
              "cart":(context)=>CartScreen(),
          }
      )
  );
}

