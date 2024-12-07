import 'package:flutter/material.dart';
import 'package:realestate/components/gallery_showcase/gallery2.dart';
import 'package:realestate/home_screen.dart';
class DetailScreen2 extends StatefulWidget {
  const DetailScreen2({Key? key}) : super(key: key);

  @override
  _DetailScreen2State createState() => _DetailScreen2State();
}

class _DetailScreen2State extends State<DetailScreen2> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    final textScale = MediaQuery.textScaleFactorOf(context);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Detail",
            style: TextStyle(
                fontSize: 20 * textScale, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Main Image
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/home2.1.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    height: screenSize.height * 0.4,
                    width: screenSize.width * 0.9,
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),

                // Main Heading
                Text(
                  "CRAFTSMAN HOUSE",
                  style: TextStyle(
                      fontSize: 22 * textScale,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900]),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Text(
                  "520 N Beaudry Ave, Los Angeles",
                  style: TextStyle(
                      fontSize: 16 * textScale, color: Colors.blue[900]),
                ),
                SizedBox(height: screenSize.height * 0.02),

                // Property Details
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.bedroom_parent,
                          color: Colors.amberAccent[400],
                        ),
                        SizedBox(width: 5),
                        Text("8 Beds",
                            style: TextStyle(
                                fontSize: 14 * textScale, color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.bathtub_rounded,
                            color: Colors.amberAccent[400]),
                        SizedBox(width: 5),
                        Text("7 Baths",
                            style: TextStyle(
                                fontSize: 14 * textScale, color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.garage_rounded,
                            color: Colors.amberAccent[400]),
                        SizedBox(width: 5),
                        Text("2 Garage",
                            style: TextStyle(
                                fontSize: 14 * textScale, color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.03),

                // Referral Section
                Row(
                  children: [
                    CircleAvatar(
                      radius: screenSize.width * 0.07,
                      backgroundImage:
                          const AssetImage("assets/images/download.jpg"),
                    ),
                    SizedBox(width: screenSize.width * 0.03),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Mic Horn",
                          style: TextStyle(
                            fontSize: 16 * textScale,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Owner Moon House",
                          style: TextStyle(fontSize: 14 * textScale),
                        ),
                      ],
                    ),

                    Spacer(),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                        // Call action
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blue[900],
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Row(
                          children: [
                            const Icon(Icons.phone, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              "Call",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14 * textScale),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.03),

                // Expandable Description
                Text(
                  "Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garage. Amazing curb appeal and entertain area with views. Tons of built-ins & extras.",
                  style: TextStyle(fontSize: 16 * textScale),
                  maxLines: isExpanded ? null : 2,
                  overflow:
                      isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  child: Text(
                    isExpanded ? "Read less" : "Read more",
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 16 * textScale,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.03),

                Row(
                  children: [
                    Text("Gallery",
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 28 * textScale))
                  ],
                ),

                DetailPage2(),

                SizedBox(height: screenSize.height * 0.02),

                Row(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.blue[900]),
                    )
                  ],
                ),

                // Price Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$989,000",
                      style: TextStyle(
                        fontSize: screenSize.height * 0.03,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.blue[900],
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14 * textScale),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

