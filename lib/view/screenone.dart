import 'package:flutter/material.dart';
import 'package:taskmarch20/constants/colorconstants/colorconstant.dart';
import 'package:taskmarch20/view/dummydb.dart';
import 'package:taskmarch20/view/screentwo/screentwo.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          size: 40,
        ),
        toolbarHeight: 100,
        backgroundColor: ColorConstants.primaryGreen,
        title: TextField(
          decoration: InputDecoration(
              hintText: "search",
              prefixIconConstraints:
                  BoxConstraints(minWidth: 40, minHeight: 50),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
              ),
              isDense: true,
              fillColor: Colors.black.withOpacity(.1),
              filled: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none)),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr4VLedO6uKzq-jzrNWccw4sEZZ8z1_Xxxjw&s"))),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("category"),
                      Text(
                        "view all",
                        style: TextStyle(color: ColorConstants.primaryGreen),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  height: 120,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DummyDb.category.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 180,
                        child: Card(
                          child:
                              Image.network(DummyDb.category[index]["imgurl"]),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("fruits"), Text("vegitables")],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best seller"),
                      Text(
                        "view all",
                        style: TextStyle(color: ColorConstants.primaryGreen),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
                Container(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: DummyDb.bestseller.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScrrenTwo(),
                              ));
                        },
                        child: Container(
                          width: 150,
                          height: 180,
                          child: Card(
                            child: Image.network(
                                DummyDb.bestseller[index]["imgurl"]),
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("red label tea\n\$12"),
                    Text("kaibavi splits\n\$5")
                  ],
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("featured seller"),
                      Text(
                        "view all",
                        style: TextStyle(color: ColorConstants.primaryGreen),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
