// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       backgroundColor: Colors.grey[900],
//       body: Center(
//         child: Stack(
//           clipBehavior: Clip.none, // allow overflow
//           children: [
//             // Big container
//             Container(
//               width: 300,
//               height: 600,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//
//             // Small container (positioned to overlap bottom)
//             Positioned(
//               bottom: -24, // half of 48 height to show half inside
//               left: 50,    // center it horizontally (adjust as needed)
//               child: Container(
//                 width: 200,
//                 height: 48,
//                 decoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     'Overlapping Container',
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   ));
// }
