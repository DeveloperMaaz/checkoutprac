import 'package:checkout/feature/checkout/presentation/widgets.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        title: const Center(
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
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  textTittle("Shipping Address"),

                  Tile("assets/icons/locat.svg",
                    "Home Address",
                    "assets/icons/right-arrow.png",
                    "soo 16 sandbanks 673468734 ",
                  ),

                  dividerScreen(),

                  textTittle("Payment method"),

                  Tile("assets/icons/card.svg",
                      "Butler Balance",
                      "assets/icons/right-arrow.png",
                      "\$ 900.0 "),

                  dividerScreen(),

                  textTittle("Order now"),

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
