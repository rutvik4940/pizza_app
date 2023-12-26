import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../utils/global.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child:Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            centerTitle: true,
            actions: [
          Icon(Icons.shopping_basket),
          ]
          ),
          body: Column(
            children:
                 List.generate(FastfoodList.length, (index) => InkWell(
                   onTap: (){
                     Map m1=FastfoodList[index];
                     Navigator.pushNamed(context, 'product',arguments: m1);
                   },
                   child: Container(
                        height: 100,
                         width:400 ,
                     padding: const EdgeInsets.all(10),
                     margin: EdgeInsets.all(10),
                     decoration: const BoxDecoration(
                         color: Colors.white,
                         boxShadow: [
                           BoxShadow(
                               color: Colors.black12, spreadRadius: 2, blurRadius: 5)
                         ]
                     ),
                     child:  Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Image.asset("${FastfoodList[index]['images']}",height: 100,width:100,),
                     SizedBox(
                       width: 15,
                     ),
                         Column(
                           children: [
                             Text(
                                "${FastfoodList[index]['name']}",
                                style:
                                TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                         SizedBox(
                           height: 20,
                         ),
                         Row(
                           children: [
                             Text(
                               "${FastfoodList[index]['item']}",
                               style:
                               TextStyle(fontSize: 15, ),
                             ),

                           ],
                         ),


                     ]
                   )
                 ]

          )
        )
    )
    )
    ),
            drawer: (
          Container(
            width: 10,
            height: 10,

          )
        )
        ),
    );
  }
}
