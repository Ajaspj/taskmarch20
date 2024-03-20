import 'package:flutter/material.dart';
import 'package:taskmarch20/constants/colorconstants/colorconstant.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "checkout",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 220,
                      child: Row(
                        children: [
                          Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtYVHAJfZiQacP72QGqsTm9VBAq-XxcIOkjO9agWBVmqiOKBZ3uSVyAjkEd_rPFJ7lzaU&usqp=CAU"),
                        ],
                      ),
                    )
                  ],
                ),
                Positioned(
                  top: 50,
                  right: 50,
                  child: Column(
                    children: [
                      Text("kalbavi splits keshew.."),
                      Text(
                        "\$5 5% off",
                        style: TextStyle(color: ColorConstants.primaryGreen),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.indeterminate_check_box,
                            color: ColorConstants.primaryGreen,
                          ),
                          Text("1"),
                          Icon(
                            Icons.add_box,
                            color: ColorConstants.primaryGreen,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [Text("PRICE DETAILS")],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Price (3 item)",
                        style: TextStyle(color: Colors.grey)),
                    Text("\$16")
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Discount", style: TextStyle(color: Colors.grey)),
                    Text(
                      "-\$1",
                      style: TextStyle(color: ColorConstants.primaryGreen),
                    )
                  ],
                )
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Delivery Charges",
                        style: TextStyle(color: Colors.grey)),
                    Text("\$5")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Total Amount",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("\$21")
                  ],
                )
              ],
            ),
            SizedBox(
              height: 260,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: ColorConstants.primaryGreen,
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: ColorConstants.primaryGreen),
                  onPressed: () {},
                  child: Text("          PROCEED TO CHECKOUT->        "),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
