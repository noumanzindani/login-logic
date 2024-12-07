import 'package:flutter/material.dart';

class  DetailPage1 extends StatelessWidget {
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
                    imageUrl: "assets/images/home.1.jpg",
                    width: screenWidth > 600 ? 180 : 100),   
                GalleryItem(
                    imageUrl: "assets/images/home.2.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home.3.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home.4.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home.5.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                    
                GalleryItem(
                    imageUrl: "assets/images/home.6.jpg",
                    width: screenWidth > 600 ? 180 : 100),   
                GalleryItem(
                    imageUrl: "assets/images/home.7.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home.8.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home.9.jpg",
                    width: screenWidth > 600 ? 180 : 100),
                GalleryItem(
                    imageUrl: "assets/images/home.10.jpg",
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
