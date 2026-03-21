import 'package:flutter/material.dart';
import 'package:machinetaskalisoninfotech/presentation/home/widgets/bannerwidget.dart';
import 'package:machinetaskalisoninfotech/presentation/home/widgets/product_card.dart';
import 'package:machinetaskalisoninfotech/presentation/home/widgets/section_header.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> banners = [
      'https://sungod.demospro2023.in.net/public/images/banner/1727092578_1_GZcLMy9jowYOZhwvfJScbCfrpNjTgQ2PvondelHc.png',
      'https://sungod.demospro2023.in.net/public/images/banner/1727080040_1_WPhAwjaJiocPPjawfjplZObpRFcvGJMcV9HcTKZ8.png',
      'https://sungod.demospro2023.in.net/public/images/banner/1727080926_1_Frame 32.webp',
    ];

    final categories = [
      {
        'name': 'Unpolished\nPulses',
        'imageurl': 'assets/images/unpolishedpulses.png',
      },
      {
        'name': 'Unpolished\nRice',
        'imageurl': 'assets/images/unpolishedpulses.png',
      },
      {
        'name': 'Unpolished\nMillets',
        'imageurl': 'assets/images/unpolishedpulses.png',
      },
      {
        'name': 'Nuts &\nDry Fruits',
        'imageurl': 'assets/images/nutsanddryfruits.png',
      },
      {
        'name': 'Unpolished\nMillets',
        'imageurl': 'assets/images/unpolishedpulses.png',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff7C2F02),
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(4),
          child: Image.asset(
            'assets/images/alisoninfotechappbarlogo.png',
            width: 69,
            height: 42,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            Bannerwidget(bannerimages: banners),

            SizedBox(height: 20),
            SectionHeader(title: 'Daily Best Selling'),
            SizedBox(height: 16),
            _buildCategoriesSection(categories),
            Divider(color: Color(0xffF2F2F2), thickness: 10),
            SectionHeader(title: 'Featured Products'),
            _buildProductCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoriesSection(List<Map<String, String>> categories) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: categories.length,
        itemBuilder: (contest, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.brown[100],
                  child: Image.asset(categories[index]['imageurl'] ?? ''),
                ),
                SizedBox(height: 8),
                Text(
                  categories[index]['name'] as String,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildProductCard({bool isFeatured = false}) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 5),
        itemCount: 4,
        itemBuilder: (context, index) {
          return ProductCard(
            category: 'Flours & Sugars',
            title: 'Light pink salt 1 kg',
            oldPrice: '₹ 80.00',
            currentPrice: '₹ 62.00',
          );
        },
      ),
    );
  }
}
