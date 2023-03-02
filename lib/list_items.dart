// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

// class AnimatedListScreen extends StatelessWidget {
//   const AnimatedListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('ANIMATED LIST'),
//         centerTitle: true,
//       ),
//       body: AnimationLimiter(
//           child: ListView.builder(
//         itemBuilder: (context, index) {
//           return AnimationConfiguration.staggeredList(
//               position: index,
//               delay: const Duration(milliseconds: 200),
//               child: SlideAnimation(
//                   duration: const Duration(milliseconds: 2500),
//                   curve: Curves.fastLinearToSlowEaseIn,
//                   horizontalOffset: -300,
//                   verticalOffset: -850,
//                   child: Container(
//                     child: ListTile(
//                       title: Text('item'),
//                     ),
//                     height: Size.height / 10,
//                     width: Size.width * 0.9,
//                     margin: const EdgeInsets.symmetric(
//                         vertical: 10.0, horizontal: 15.0),
//                     decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(10.0),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.5),
//                             spreadRadius: 5,
//                             blurRadius: 7,
//                             offset: const Offset(0, 3),
//                           )
//                         ]),
//                   )));
//         },
//         itemCount: 20,
//       )),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
