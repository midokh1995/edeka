import 'package:flutter/material.dart';
class TopSections extends StatelessWidget {
  const TopSections({Key? key,required this.imageIcon,required this.nameSections}) : super(key: key);

  final String imageIcon;
  final String nameSections;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(9),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Container(
                decoration: BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage("assets/images/iconTaps/$imageIcon"),
                      fit: BoxFit.fill,
                    )
                ),

              ),
            ),
            Padding(padding: EdgeInsets.all(5),
              child: Text(nameSections),)
          ],
        )
    );
  }
}
