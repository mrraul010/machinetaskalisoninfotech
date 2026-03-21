import 'package:flutter/material.dart';

class CategoriesProductCard extends StatefulWidget {
  final String title;
  final String currentPrice;
  final String oldPrice;
  final String discount;
  final bool initialAdded;
  const CategoriesProductCard({
    super.key,
    required this.title,
    required this.currentPrice,
    required this.oldPrice,
    required this.discount,
    this.initialAdded = false,
  });

  @override
  State<CategoriesProductCard> createState() => _CategoriesProductCardState();
}

class _CategoriesProductCardState extends State<CategoriesProductCard> {
  late bool isAdded;
  int quantity = 1;

  @override
  void initState() {
    super.initState();
    isAdded = widget.initialAdded;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
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
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFF7A3803),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        widget.discount,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 4,
                    right: 4,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Color(0xFF7A3803),
                        size: 20,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Text(
              widget.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Text(
                  widget.currentPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF7A3803),
                  ),
                ),
                const SizedBox(width: 6),
                if (widget.oldPrice.isNotEmpty)
                  Text(
                    widget.oldPrice,
                    style: const TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.lineThrough,
                      color: Colors.grey,
                    ),
                  ),
              ],
            ),

            Spacer(),
            SizedBox(
              height: 36,
              width: double.infinity,
              child: isAdded ? _buildQuantitySelector() : _buildAddButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isAdded = true;
          quantity = 1;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        elevation: 0,
        side: const BorderSide(color: Colors.transparent),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'Add',
            style: TextStyle(
              color: Color(0xFF7A3803),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 4),
          Icon(
            Icons.shopping_cart_outlined,
            size: 16,
            color: Color(0xFF7A3803),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantitySelector() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF7A3803),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.remove, color: Colors.white, size: 18),
            onPressed: () {
              setState(() {
                if (quantity > 1) {
                  quantity--;
                } else {
                  isAdded = false;
                }
              });
            },
          ),
          Text(
            '$quantity',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.add, color: Colors.white, size: 18),
            onPressed: () {
              setState(() {
                quantity++;
              });
            },
          ),
        ],
      ),
    );
  }
}
