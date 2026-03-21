import 'package:flutter/material.dart';
import 'package:machinetaskalisoninfotech/presentation/categories/categories_product_card.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> products = [
      {
        'title': 'Chana dal 1KG',
        'currentPrice': '₹ 105.00',
        'oldPrice': '₹ 135.00',
        'discount': '22% off',
        'initialAdded': true,
      },
      {
        'title': 'Roasted Chana 750g',
        'currentPrice': '₹ 95.00',
        'oldPrice': '₹ 125.00',
        'discount': '24% off',
        'initialAdded': false,
      },
      {
        'title': 'Toor Dal 1KG',
        'currentPrice': '₹ 153.00',
        'oldPrice': '₹ 210.00',
        'discount': '27% off',
        'initialAdded': false,
      },
      {
        'title': 'Red Chana 1 kg',
        'currentPrice': '₹ 95.00',
        'oldPrice': '₹ 135.00',
        'discount': '26% off',
        'initialAdded': false,
      },
      {
        'title': 'Grenn Moong 500G',
        'currentPrice': '₹ 72.00',
        'oldPrice': '₹ 90.00',
        'discount': '20% off',
        'initialAdded': false,
      },
      {
        'title': 'Masoor Dal 1KG',
        'currentPrice': '₹ 125.00',
        'oldPrice': '100',
        'discount': '40% off',
        'initialAdded': false,
      },
      {
        'title': 'Ground Nuts 500g',
        'currentPrice': '₹ 86.00',
        'oldPrice': '₹ 105.00',
        'discount': '25% off',
        'initialAdded': false,
      },
      {
        'title': 'Urad Dal 1KG',
        'currentPrice': '₹ 150.00',
        'oldPrice': '₹ 180.00',
        'discount': '16% off',
        'initialAdded': false,
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () {},
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Unpolished Pulses',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '57 Items',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black87),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag, color: Colors.black87),
            onPressed: () {},
          ),
        ],
      ),

      body: Column(
        children: [
          Container(height: 1, color: Colors.grey.shade200),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 12.0,
                mainAxisSpacing: 12.0,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];

                return CategoriesProductCard(
                  title: product['title'],
                  currentPrice: product['currentPrice'],
                  oldPrice: product['oldPrice'],
                  discount: product['discount'],
                  initialAdded: product['initialAdded'],
                );
              },
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey.shade300, width: 1),
              ),
            ),
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.swap_vert, color: Colors.black87),
                        SizedBox(width: 8),
                        Text(
                          'Sort By',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff222222),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Container(width: 1, height: 40, color: Colors.grey.shade300),

                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.filter_alt_outlined, color: Colors.black87),
                        SizedBox(width: 8),
                        Text(
                          'Filter',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff222222),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
