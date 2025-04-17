import 'package:flutter/material.dart';
import 'package:bottom_tab_navigation/widgets/search.dart';
import 'package:bottom_tab_navigation/widgets/carousel.dart';
import 'package:bottom_tab_navigation/widgets/product_card_carousel.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actionsPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        leading: SizedBox(
          height: 24,
          width: 24,
          child: Icon(Icons.menu, size: 24),
        ),
        title: Row(
          children: [
            Image.asset('assets/images/splash_screen_logo.png', height: 24),
          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.location_on_outlined, size: 25),
          ),
          SizedBox(
            width: 100,
            child: Text(
              'Semarang, Central Java',
              maxLines: 1,
              style: TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Icon(Icons.notifications_none, size: 25),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: Search(title: 'iPhone 16 banting harga...'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Carousel(),
            ProductCardCarousel(title: 'Today\'s Deals',),
            ProductCardCarousel(title: 'Flash Sale',),
          ],
        ),
      ),
    );
  }
}