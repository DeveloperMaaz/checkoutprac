import 'package:checkout/feature/checkout/presentation/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
            width: 24,
            height: 24,
            image: AssetImage('assets/icons/arrow-left.png')),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 50.0),
          child: Text("Checkout",
            style: TextStyle(fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 270,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textTittle("Shipping Address"),

                  TileShipping("assets/icons/locat.svg",
                    "Home Address",
                    "assets/icons/right-arrow.png",
                    "soo 16 sandbanks 8789",
                  ),

                  dividerScreen(),

                  textTittle("Payment method"),

                  TilePayment("assets/icons/card.svg",
                      "Butler Balance",
                      "assets/icons/right-arrow.png",
                      "\$ 900.0 "),

                  dividerScreen(),

                  textTittle("Your Order"),

                  Tile1("assets/icons/Rectangle 51.png",
                      "Beats two tune free wireless ",
                      "\$ 198.99",
                      "qty1",
                      'Variation: blue'),
                  dividerScreen(),
                  Tile1("assets/icons/headp.png",
                      "Beats two tune free extra base",
                      "\$ 256.99",
                      'qty: 1',
                    "Variation: blue"),
                ],
              ),
            ),
          ),
          const bottomContainer(),
        ],
      ),
    );
  }
}
