// import 'package:flutter/material.dart';
// import 'package:realstate/components/gallery_showcase/galery.dart';
// import 'package:realstate/home_screen.dart';

// class DetailScreen1 extends StatelessWidget {
//   const DetailScreen1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenSize = MediaQuery.sizeOf(context);
//     final textScale = MediaQuery.textScaleFactorOf(context);

//     return Scaffold(
//       backgroundColor: Colors.pink[50],
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         title: Text(
//           "Detail",
//           style: TextStyle(fontSize: 20 * textScale),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Main Image
//               Center(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(18),
//                     image: const DecorationImage(
//                       image: AssetImage("assets/images/home.1.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   height: screenSize.height * 0.4,
//                   width: screenSize.width * 0.9,
//                 ),
//               ),
//               SizedBox(height: screenSize.height * 0.02),

//               // Main Heading
//               Text(
//                 "CRAFTSMAN HOUSE",
//                 style: TextStyle(
//                   fontSize: 22 * textScale,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: screenSize.height * 0.01),
//               Text(
//                 "520 N Beaudry Ave, Los Angeles",
//                 style: TextStyle(fontSize: 16 * textScale),
//               ),
//               SizedBox(height: screenSize.height * 0.02),

//               // Property Details
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(Icons.bedroom_parent),
//                       SizedBox(width: 5),
//                       Text("4 Beds", style: TextStyle(fontSize: 14 * textScale)),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       const Icon(Icons.bathtub_rounded),
//                       SizedBox(width: 5),
//                       Text("4 Baths", style: TextStyle(fontSize: 14 * textScale)),
//                     ],
//                   ),
//                   Row(
//                     children: [
//                       const Icon(Icons.garage_rounded),
//                       SizedBox(width: 5),
//                       Text("1 Garage", style: TextStyle(fontSize: 14 * textScale)),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: screenSize.height * 0.03),

//               // Referral Section
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: screenSize.width * 0.07,
//                     backgroundImage: const AssetImage("assets/images/home.1.jpg"),
//                   ),
//                   SizedBox(width: screenSize.width * 0.03),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Rebecca Tetha",
//                         style: TextStyle(
//                           fontSize: 16 * textScale,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text(
//                         "Real Estate Agent",
//                         style: TextStyle(fontSize: 14 * textScale),
//                       ),
//                     ],
//                   ),
//                   Spacer(),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => HomeScreen()),
//                       );
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(18),
//                         color: Colors.blue,
//                       ),
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20, vertical: 10),
//                       child: Row(
//                         children: [
//                           const Icon(Icons.phone, color: Colors.white),
//                           SizedBox(width: 5),
//                           Text(
//                             "BUY NOW",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14 * textScale),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: screenSize.height * 0.03),

//               // Gallery Section
//               Text(
//                 "Gallery",
//                 style: TextStyle(
//                   fontSize: 18 * textScale,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: screenSize.height * 0.02),
//               DetailPage(),

//               // Price Section
//               SizedBox(height: screenSize.height * 0.03),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "Price",
//                     style: TextStyle(
//                       fontSize: 18 * textScale,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: screenSize.height * 0.01),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "\$599,000",
//                         style: TextStyle(
//                           fontSize: screenSize.height * 0.03,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(builder: (context) => HomeScreen()),
//                           );
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(18),
//                             color: Colors.blue,
//                           ),
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 10),
//                           child: Text(
//                             "BUY NOW",
//                             style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14 * textScale),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),),);}
// }