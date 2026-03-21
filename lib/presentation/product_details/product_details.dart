import 'package:flutter/material.dart';
import 'package:machinetaskalisoninfotech/presentation/categories/categories_product_card.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _currentImageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF9F9F9),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xff222222)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xff222222)),
            onPressed: () {},
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_bag, color: Colors.black87),
                onPressed: () {},
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: Color(0xFF7A3803),
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            _buildImageCarousel(),
            SizedBox(height: 16),
            _builddotitems(),
            SizedBox(height: 24),
            _buildProductInfo(),
            Divider(color: Color(0xffF2F2F2), thickness: 10),
            _buildDescription(),
            Divider(color: Color(0xffF2F2F2), thickness: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Text(
                'Related Products',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff222222),
                ),
              ),
            ),

            _buildRelatedProducts(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: Offset(0, -4),
              blurRadius: 10,
            ),
          ],
        ),
        child: SafeArea(
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff7C2F02),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Add to cart ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding _buildRelatedProducts() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 6),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.70,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        ),
        itemCount: 2,
        itemBuilder: (context, index) {
          return CategoriesProductCard(
            title: 'Chana dal 1KG',
            currentPrice: '₹ 105.00',
            oldPrice: '₹ 80.00',
            discount: '22% off',
          );
        },
      ),
    );
  }

  Widget _builddotitems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: _currentImageIndex == index ? 24 : 8,
          height: 8,
          decoration: BoxDecoration(
            color: _currentImageIndex == index
                ? const Color(0xFF7A3803)
                : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }

  Padding _buildImageCarousel() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Stack(
          children: [
            PageView.builder(
              itemCount: 3,
              onPageChanged: (index) {
                setState(() {
                  _currentImageIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        width: 176,
                        height: 238,
                        'https://sungod.demospro2023.in.net/images/product/1762088253EOpvtGcwNgVhNvI3YLkaLEUXveub12jvfHuRQhR2.jpg',
                      ),
                    ],
                  ),
                );
              },
            ),

            Positioned(
              top: 12,
              right: 12,
              child: IconButton(
                icon: const Icon(
                  Icons.favorite_border,
                  color: Color(0xFF7A3803),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Masoor Dal 1KG',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Unpolished Masoor Dal',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                '₹ 125.00',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF7A3803),
                ),
              ),
              const SizedBox(width: 8),
              const Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Text(
                  '₹ 135.00',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(bottom: 3.0),
                child: Text(
                  '(14% off)',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Color(0xffF2F2F2),
                child: Icon(Icons.share),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Description',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff222222),
            ),
          ),
          SizedBox(height: 12),
          Text(
            'Bag of Green offers premium Strawberries from South Africa, prized for their vibrant red color, natural sweetness, and juicy texture. Perfect for snacking, desserts, and smoothies, these strawberries are carefully sourced and delivered fresh anywhere in the UAE. Enjoy the delicious taste and quality of South African strawberries at your convenience.',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xff222222),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
