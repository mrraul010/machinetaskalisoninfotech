import 'package:flutter/material.dart';

class Bannerwidget extends StatelessWidget {
  final List<String>? bannerimages;
  const Bannerwidget({super.key, this.bannerimages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.93),
        itemCount: bannerimages?.length ?? 0,
        itemBuilder: (context, index) {
          return _buildPromoBannerItem(imageurls: bannerimages?[index] ?? '');
        },
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
