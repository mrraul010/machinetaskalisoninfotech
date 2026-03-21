import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List banners = [
      'https://sungod.demospro2023.in.net/public/images/banner/1727092578_1_GZcLMy9jowYOZhwvfJScbCfrpNjTgQ2PvondelHc.png',
      'https://sungod.demospro2023.in.net/public/images/banner/1727080040_1_WPhAwjaJiocPPjawfjplZObpRFcvGJMcV9HcTKZ8.png',
      'https://sungod.demospro2023.in.net/public/images/banner/1727080926_1_Frame 32.webp',
    ];
    return Scaffold(
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

            SizedBox(
              height: 160,
              child: PageView.builder(
                controller: PageController(viewportFraction: 0.93),
                itemCount: banners.length,
                itemBuilder: (context, index) {
                  return _buildPromoBannerItem(imageurls: banners[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPromoBannerItem({required String imageurls}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(child: Image.network(imageurls, fit: BoxFit.contain)),
    );
  }
}
