import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vaffle"),
        ),
        body: HomeContent(),
      ),
    );
  }
}

// /// 远程图片的加载
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Image.network(
//           "http://wimg.spriteapp.cn/picture/2018/1030/6e3e4c06dc1211e891ba842b2b4c75ab_wpd.jpg",
//           alignment: Alignment.topCenter, // 对齐方式
//           /// 设置图片的背景颜色，通常和colorBlendMode配合使用，
//           /// 这样可以是图片颜色和背景色混合
//           /// 下面的图片就是进行了颜色的混合
//           color: Colors.red,
//           colorBlendMode: BlendMode.screen,

//           fit: BoxFit.cover,
//           ),
//         width: 300,
//         height: 300,
//         decoration: BoxDecoration(
//           color: Colors.red,
//         ),
//       ),
//     );
//   }
// }

/// 图片的圆角 方法一
// class HomeContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 300,
//         height: 300,
//         decoration: BoxDecoration(
//           color: Colors.red,
//           borderRadius: BorderRadius.circular(150),
//           image: DecorationImage(
//             image: NetworkImage("http://wimg.spriteapp.cn/picture/2018/1030/6e3e4c06dc1211e891ba842b2b4c75ab_wpd.jpg"),
//             fit: BoxFit.cover
//           )
//         ),
//       ),
//     );
//   }
// }

/// 图片的圆角 方法二
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          // 本地
          child: Image.asset(
            "images/flutter01.jpg",
            fit: BoxFit.cover,
          ),
          // 远程
          // child: Image.network(
          //   "http://wimg.spriteapp.cn/picture/2018/1030/6e3e4c06dc1211e891ba842b2b4c75ab_wpd.jpg",
          //   fit: BoxFit.cover,
          //   ),
        ),
        width: 300,
        height: 300,
      ),
    );
  }
}
