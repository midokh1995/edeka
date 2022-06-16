import 'package:flutter/material.dart';

class BodyMilk extends StatefulWidget {
  const BodyMilk({Key? key}) : super(key: key);

  @override
  State<BodyMilk> createState() => _BodyMilkState();
}

class _BodyMilkState extends State<BodyMilk> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          width: 135,
          height: 200,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // image
              Positioned(
                top: 20,
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image(image: AssetImage('assets/images/iconTaps/dairy-products.png'),),
                ),
              ),
              //offrs
              Positioned(
                top: 0,
                left: 0,
                child:Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.zero,
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text('30% Off',style: TextStyle(
                          color: Colors.white
                      ),
                      ),
                    )
                ),

              ),
              //favorite icon
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(Icons.favorite_border_outlined,color: Colors.red,),
                    )
                ),
              ),
              //product name
              Positioned(
                bottom: 45,
                left: 10,
                child:Container(
                    child: Text('Milk',style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                ),
              ),
              //Product details
              Positioned(
                bottom: 30,
                left: 10,
                child: Container(

                    child: Text('Milk Milk',style: TextStyle(
                      color: Colors.grey,
                    ),textAlign: TextAlign.start,
                    )
                ),
              ),
              // add icon
              Positioned(
                bottom: 0,
                right: 0,
                child:Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.zero,
                        bottomLeft: Radius.zero,
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child:
                      Icon(Icons.add,color: Colors.white,),
                    )
                ),

              ),
              // price
              Positioned(
                bottom: 5,
                left: 10,
                child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(2),
                      child: Text('\$30',style: TextStyle(
                        color: Colors.green,
                      ),
                      ),
                    )
                ),
              ),
              // old price
              Positioned(
                bottom: 5,
                left: 40,
                child: Container(
                    child: const Padding(
                      padding: EdgeInsets.all(2),
                      child: Text('\$40',style: TextStyle(
                        color: Colors.red,

                      ),
                      ),
                    )
                ),
              ),
            ],
          ),
        )
    );
  }
}
