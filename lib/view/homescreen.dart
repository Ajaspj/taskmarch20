import 'package:flutter/material.dart';
import 'package:taskmarch20/constants/colorconstants/colorconstant.dart';
import 'package:taskmarch20/view/bestseller.dart';
import 'package:taskmarch20/view/category.dart';
import 'package:taskmarch20/view/dummydb.dart';
import 'package:taskmarch20/view/productdetailsscreen/productdetails.dart';

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
        toolbarHeight: 100,
        backgroundColor: ColorConstants.primaryGreen,
        leading: Icon(Icons.sort),
        title: TextButton(
            onPressed: () {},
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIconConstraints: BoxConstraints(minWidth: 50),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                isDense: true,
                fillColor: ColorConstants.primaryWhite,
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 200,
                  width: 450,
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIIHSs_cKp7P_ZHS9cokd-YNjlQgr9c7V4UQ&s"),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "category",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "view all",
                    style: TextStyle(color: ColorConstants.primaryGreen),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Category(
                          index: index,
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: DummyDb.category.length),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Best Seller",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "view all",
                    style: TextStyle(color: ColorConstants.primaryGreen),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 230,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductScreen()));
                          },
                          child: BestSeller(
                            index: index,
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: DummyDb.bestSeller.length),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Featured Deals",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "view all",
                    style: TextStyle(color: ColorConstants.primaryGreen),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
