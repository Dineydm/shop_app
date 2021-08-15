import 'package:flutter/material.dart';

import 'add_to_cart.dart';
import 'description.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'product_title_with_image.dart';
import '/constants.dart';
import '/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product),
                      SizedBox(height: kDefaultPaddin / 2),
                      Description(product),
                      SizedBox(height: kDefaultPaddin / 2),
                      CounterWithFavBtn(),
                      SizedBox(height: kDefaultPaddin / 2),
                      AddToCart(product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
