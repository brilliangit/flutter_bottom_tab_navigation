import 'package:bottom_tab_navigation/models/product.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductCardCarousel extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Kaos Oblong',
      description: 'Celana Sport Dewasa /Am /Jumbo/Nyaman dipakai/Futsal/Badminton/Voli/COD',
      price: 40.95,
      imageUrl: 'https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/2/23/16631e31-1e75-43ec-a7a5-3b5ef394597a.jpg',
    ),
    Product(
      name: 'Celana Casual',
      description: 'Celana Sport Dewasa /Am /Jumbo/Nyaman dipakai/Futsal/Badminton/Voli/COD',
      price: 40.00,
      imageUrl: 'https://images.tokopedia.net/img/cache/300-square/product-1/2019/7/5/3453155/3453155_b49ba184-3041-444a-8708-ea65fd09ca78_1280_1280',
    ),
    Product(
      name: 'Boneka Labubu',
      description: 'Celana Sport Dewasa /Am /Jumbo/Nyaman dipakai/Futsal/Badminton/Voli/COD',
      price: 19.99,
      imageUrl: 'https://images.tokopedia.net/img/cache/300-square/VqbcmM/2024/11/18/a5d30f6b-4e4f-4389-9737-57d034c82dab.jpg',
    ),
    // Tambahkan lebih banyak produk di sini
  ];

 final String title;

  ProductCardCarousel({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          indent: 20,
          color: Colors.white,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Divider(
          indent: 20,
          color: Colors.white,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 255.0,
              autoPlay: false,
              enlargeCenterPage: false,
              aspectRatio: 16 / 9,
              viewportFraction: 0.4,
              enableInfiniteScroll: false,
              padEnds: false
            ),
            items:
                products.map((product) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        child: Card(
                          borderOnForeground: true,
                          elevation: 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Expanded(
                                child: Image.network(
                                  product.imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      product.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 4.0),
                                    Text(
                                      product.description,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[600],
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      '\$${product.price.toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.0,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
          ),
        ),
      ],
    );
  }
}
