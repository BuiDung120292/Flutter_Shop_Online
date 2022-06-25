import 'package:flutter/material.dart';
import '/screens/details/components/add_cart.dart';
import '/screens/details/components/card_counter_with_fab_button.dart';
import '/screens/details/components/description.dart';
import '/constants.dart';
import '/screens/details/components/color_and_size.dart';
import '/screens/details/components/product_title_with_image.dart';
import '/models/Product.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

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
                  margin: EdgeInsets.only(top: size.height * 0.35),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      const CardCounterWithFabButton(),
                      const SizedBox(
                        height: kDefaultPaddin / 2,
                      ),
                      AddCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
