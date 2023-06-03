import 'package:carrot_market_ui/screens/components/product_detail.dart';
import 'package:flutter/cupertino.dart';

import '../../models/product.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.0,
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              product.urlToImage,
              width: 100,
              height: 105,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16.0,),
          ProductDetail(product:product)
        ],
      ),
    );
  }
}
