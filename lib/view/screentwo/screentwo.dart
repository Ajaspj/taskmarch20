import 'package:flutter/material.dart';
import 'package:taskmarch20/constants/colorconstants/colorconstant.dart';
import 'package:taskmarch20/view/screenthree/screenthree.dart';

class ScrrenTwo extends StatelessWidget {
  const ScrrenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Product Details",
            style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 220.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8lp38Vt3HfYgl08LVwQwjzimw3Dop7cN1WNvc7R4m9Q&s"),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            top: 240,
            left: 25,
            child: Column(
              children: [
                Text(
                  "Red Label Tea",
                  style: TextStyle(color: ColorConstants.primaryBlack),
                ),
                Text("96 rating"),
                Text("\$12 5 5 off")
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Details",
                  style: TextStyle(
                      color: ColorConstants.primaryBlack,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("brand", style: TextStyle(color: Colors.grey)),
                  Text("Red Label")
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Type",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("Black Tea")
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Quantity", style: TextStyle(color: Colors.grey)),
                  Text("7 KG")
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Shelf Life", style: TextStyle(color: Colors.grey)),
                  Text("12 months")
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Organic", style: TextStyle(color: Colors.grey)),
                  Text("No")
                ],
              )
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Flavour", style: TextStyle(color: Colors.grey)),
                  Text("Plain")
                ],
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: ColorConstants.primaryGreen,
              ),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ScreenThree(),
                        ));
                  },
                  child: Text("ADD TO CART"))
            ],
          )
        ]));
  }
}
