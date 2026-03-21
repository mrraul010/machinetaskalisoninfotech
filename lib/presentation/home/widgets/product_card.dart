import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String? category;
  final String? title;
  final String? currentPrice;
  final String? oldPrice;
  const ProductCard({
    super.key,
    this.category,
    this.title,
    this.currentPrice,
    this.oldPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Image.network(
                      'https://sungod.demospro2023.in.net/images/product/1761759948iZXXRm792BzaGNW3cwX1kdvbbcai8W3ubR4yXqet.jpg',
                      width: 90,
                      height: 90,
                    ),
                  ),
                ),
                Positioned(
                  right: 8,
                  top: 7,
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              category ?? '',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xff7C2F02),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 4),
            Text(
              title ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Text(
                  currentPrice ?? '',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7A3803),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  oldPrice ?? '',
                  style: const TextStyle(
                    fontSize: 10,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: 36,
              child: Material(
                elevation: 3,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: Text(
                    'Add',
                    style: TextStyle(
                      color: Color(0xff7C2F02),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  label: Icon(
                    Icons.shopping_cart_outlined,
                    size: 16,
                    color: Color(0xFF7A3803),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
