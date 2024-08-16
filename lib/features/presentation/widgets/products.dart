import 'package:flutter/material.dart';
import 'package:ikimashini/features/presentation/pages/pay.dart';

class Products {
  static Widget buildProductGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Recommended',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              buildProductCard(context, 'Lumicash', 'images/lumi_final.jpeg'),
              buildProductCard(context, 'Ecocash', 'images/EcoCash.jpg'),
              buildProductCard(context, 'I Hela', 'images/ihela.jpeg'),
              buildProductCard(context, 'E Feza', 'images/e_feza.png'),
            ],
          ),
        ],
      ),
    );
  }

  static Widget buildProductCard(BuildContext context, String name, String imagePath) {
    return GestureDetector(
      onTap: () {
        // Navigate to the Pay screen when the image is tapped
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Pay(productName: name)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.asset(
                  imagePath,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,  // Makes the image fill the entire container
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
