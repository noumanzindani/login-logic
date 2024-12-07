import 'package:flutter/material.dart';
import 'package:realestate/components/detail_Screen/deatil_Screen_1.dart';
import 'package:realestate/components/detail_Screen/deatil_screen_2.dart';

class ResponsiveGridView extends StatelessWidget {
  // Example dynamic data
  final List<Map<String, dynamic>> gridData = [
    {
      "id": 1,
      "title": "CRAFTSMAN HOUSEfl",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen1(),
      "Price": "\$599000",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 2,
      "title": "Joraj Home",
      "image": "assets/images/home2.1.webp",
      "navigation": DetailScreen2(),
      "Price": "article1",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 3,
      "title": "Item 3",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen1(),
      "Price": "article1",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 4,
      "title": "Item 4",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article1",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 5,
      "title": "Item 5",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen1(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 6,
      "title": "Item 6",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 7,
      "title": "Item 7",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 8,
      "title": "Item 8",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 9,
      "title": "Item 9",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 10,
      "title": "Item 10",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 11,
      "title": "Item 11",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
    {
      "id": 12,
      "title": "Item 12",
      "image": "assets/images/home.1.jpg",
      "navigation": DetailScreen2(),
      "Price": "article5",
      "Beds":"4 Beds ",
      "Baths":"4 baths",
      "Garage":"1 Garage"
    },
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int gridCount = (screenWidth / 180).floor();
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: gridData.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final item = gridData[index];

          return GestureDetector(
            onTap: () {
              // Navigate using the defined navigation key
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => item["navigation"],
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    // Image
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12)),
                          image: DecorationImage(
                            image: AssetImage(item["image"]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 2),
                    // Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text(
                            item["title"],
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.sizeOf(context).height * 0.01,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height:2),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            item["Price"],
                            textAlign: TextAlign.center,
                            style:  TextStyle(
                              fontWeight: FontWeight.bold,
                                color: Colors.white, fontSize: MediaQuery.sizeOf(context).height*0.015),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2),
                    // Dynamic description

                   Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: 
                        [Row(children: [
                          Icon(Icons.bed_sharp,color: Colors.white,size: MediaQuery.sizeOf(context).height*0.012,),
                          Text(item["Beds"],style: TextStyle(color: Colors.white,fontSize:MediaQuery.sizeOf(context).height*0.012))]),

                          Row(children: [
                          Icon(Icons.bathtub_sharp,color: Colors.white,size: MediaQuery.sizeOf(context).height*0.012),
                          Text(item["Baths"],style: TextStyle(color: Colors.white,fontSize:MediaQuery.sizeOf(context).height*0.012))]),

                          Row(children: [
                          Icon(Icons.garage_rounded,color: Colors.white,size: MediaQuery.sizeOf(context).height*0.012),
                          Text(item["Garage"],style: TextStyle(color: Colors.white,fontSize: MediaQuery.sizeOf(context).height*0.012))])
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class DetailScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body: const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
