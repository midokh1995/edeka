
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../component/bodyMilk.dart';
import '../component/searchHomeView.dart';
import '../component/topSections.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  List imgIcon = ['dairy-products.png','fish.png','meat.png','fruit.png','vegetable.png','chocolate.png'];
  List nameSections = ['Milk','Fish','Meat','Fruit','Vegetable','Chocolate'];
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(

          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,color: Colors.grey)),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag,color: Colors.blue[300])),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.red[300])),
          ],
          centerTitle: true,
          title: Text(
              "EDEKA",
              style: const TextStyle(
                  color:  Color(0xFF0077ED),
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                  fontSize: 30,
              )),
        ),

      body:Column(
        children: [
          SearchHomeView(),
          Container(
            height: 110,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgIcon.length,
                itemBuilder: (context,index){
                  return TopSections(imageIcon:imgIcon[index],nameSections:nameSections[index]);
                }),
          ),




         Expanded(
           flex: 1,
           child:  Container(
             padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
             decoration: BoxDecoration(
               color: Colors.grey[300],
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20.0),
                 topRight: Radius.circular(20.0),
                 bottomLeft: Radius.zero,
                 bottomRight: Radius.zero,
               ),
             ),
             child:GridView.count(
               scrollDirection: Axis.vertical,

               crossAxisCount: 2,
               children: [
                 BodyMilk(),
               ],
             ),



           ),
         )

        ],
      ),


    );
  }
}
