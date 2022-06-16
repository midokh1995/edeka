import 'package:flutter/material.dart';

class SearchHomeView extends StatelessWidget {
  const SearchHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Padding(padding: EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[300],
                ),
                height: 50,
                width: 320,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'search',
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(Icons.search,color: Colors.grey,),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Icon(Icons.add_road_rounded,color: Colors.grey,),
            ),
          ],
        )
      ],
    );
  }
}
