// import 'package:dashed_circle/dashed_circle.dart';
// import 'package:flutter/material.dart';
//
// import '../config/assets.dart';
// import '../config/colors.dart';
// class MyPage extends StatefulWidget {
//   const MyPage({super.key});
//
//   @override
//   State<MyPage> createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
//   // Variables
//   late Animation gap;
//   late Animation base;
//   late Animation reverse;
//   late AnimationController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(vsync: this, duration: Duration(seconds: 4));
//     base = Tween<double>(begin: 0.0, end: 1.0).animate(controller); // Use the controller directly
//     reverse = Tween<double>(begin: 0.0, end: -1.0).animate(controller);
//     gap = Tween<double>(begin: 3.0, end: 0.0).animate(controller)
//       ..addListener(() {
//         setState(() {});
//       });
//     controller.forward();
//   }
//
//
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Container(
//         alignment: Alignment.center,
//         child: DashedCircle(
//           gapSize: gap.value,
//           dashes: 40,
//           color: Color(0XFFED4634),
//           child: RotationTransition(
//             turns: base as Animation<double>,
//             child: RotationTransition(
//               turns: reverse as Animation<double>,
//               child: CircleAvatar(
//                 radius: 43.0,
//                 backgroundImage: AssetImage(ImageAssets.circle1),
//                 // backgroundColor: AppColors.avatar.withOpacity(0.03),
//               ),
//             ),
//           ),
//         ),
//
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// import '../config/assets.dart';
// import '../config/colors.dart';
//
// class MyPage extends StatefulWidget {
//   const MyPage({Key? key}) : super(key: key);
//
//   @override
//   State<MyPage> createState() => _MyPageState();
// }
//
// class _MyPageState extends State<MyPage> with SingleTickerProviderStateMixin {
//   late Animation<double> gap;
//   late Animation<double> base;
//   late Animation<double> reverse;
//   late AnimationController controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
//     base = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
//     reverse = Tween<double>(begin: 0.0, end: -1.0).animate(controller);
//     gap = Tween<double>(begin: 0.0, end: 1.0).animate(controller)
//       ..addListener(() {
//         setState(() {});
//       });
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   void _onAvatarTap() {
//     controller.reset();
//     controller.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: GestureDetector(
//         onTap: _onAvatarTap,
//         child: Container(
//           alignment: Alignment.center,
//           child: RotationTransition(
//             turns: base,
//             child: Container(
//               height: 53,
//               width: 53,
//               decoration: const BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     AppColors.gradient1,
//                     AppColors.gradient2,
//                     AppColors.gradient3,
//                   ]),
//                   shape: BoxShape.circle),
//               child: RotationTransition(
//                 turns: reverse,
//                 child: Padding(
//                   // this padding will be your border size
//                   padding: const EdgeInsets.all(3.0),
//                   child: Stack(
//                     children: [
//                       Positioned.fill(
//                         child: Container(
//                           decoration: BoxDecoration(
//                               color: Colors.white, shape: BoxShape.circle),
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: Center(
//                           child: const CircleAvatar(
//                             backgroundColor: Colors.white,
//                             foregroundImage: AssetImage(ImageAssets.circle2),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../config/assets.dart';
import '../config/colors.dart';



class MyCircularImage extends StatefulWidget {
  final String imageAsset;

  const MyCircularImage({Key? key, required this.imageAsset}) : super(key: key);

  @override
  _MyCircularImageState createState() => _MyCircularImageState();
}

class _MyCircularImageState extends State<MyCircularImage> with SingleTickerProviderStateMixin {
  late Animation<double> gap;
  late Animation<double> base;
  late Animation<double> reverse;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    base = Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    reverse = Tween<double>(begin: 0.0, end: -1.0).animate(controller);
    gap = Tween<double>(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onAvatarTap() {
    controller.reset();
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onAvatarTap,
      child: Container(
        margin: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: RotationTransition(
          turns: base,
          child: Container(
            height: 63,
            width: 63,
            decoration: const BoxDecoration(
    gradient: LinearGradient(colors: [
                    AppColors.gradient1,
                    AppColors.gradient2,
                    AppColors.gradient3,
                  ]),
              shape: BoxShape.circle,
            ),
            child: RotationTransition(
              turns: reverse,
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundImage: AssetImage(widget.imageAsset),
                          radius: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}