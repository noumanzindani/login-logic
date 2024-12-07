import 'package:flutter/material.dart';

class  DetailPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get screen width and height
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Responsive height for the gallery
          Container(
            height: screenWidth > 600
                ? 180
                : 100, // Larger height for wider screens
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                GalleryItem(
                    imageUrl: "assets/images/home2.1.webp",
                    width: screenWidth > 600 ? 180 : 100),   
                GalleryItem(
                    imageUrl: "assets/images/home2.2.webp",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home2.3.webp",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home2.4.webp",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home2.5.webp",
                    width: screenWidth > 600 ? 180 : 100),
                    
                GalleryItem(
                    imageUrl: "assets/images/home2.6.webp",
                    width: screenWidth > 600 ? 180 : 100),   
                GalleryItem(
                    imageUrl: "assets/images/home2.7.webp",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home2.8.webp",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home2.9.webp",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home2.10.webp",
                    width: screenWidth > 600 ? 180 : 100)
              ],

            ),
          ),
        ],
      ),
    );
  }
}

class GalleryItem extends StatelessWidget {
  final String imageUrl;
  final double width;

  const GalleryItem({required this.imageUrl, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
