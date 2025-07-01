import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../main.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: (){
            context.go("/crypto/list");
          }, child: Text("CryptoList")),
          TextButton(onPressed: (){
            context.go("/crypto/favourite");
          }, child: Text("CryptoFav")),
          // ClipPath(
          //   clipper: HexaClipper(),
          //   clipBehavior: Clip.antiAlias,
          //   child: AspectRatio(
          //       aspectRatio: 1,
          //       child: Container(height: 50,width: 50,color: Colors.blue,child: Icon(Icons.add))
          //   )
          // ),
        ],
      ),
    );
  }
}

class HexaClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // Define a custom path to create a stylish clipped shape

    //final points = [[1,0.5],[0.75,0.9330127],[0.25,0.9330127],[0,0.5],[0.25,0.0669873],[0.75,0.0669873]];

    final pointCorner = math.Point(0.5,0);
    final pointCenter = math.Point(0.5,0.5);
    final pointEdge = math.Point(0.5*3/4, 0.5*math.sqrt(3)/4);
    final angle = math.pi/3;

    var path = Path();
    final len = 6;
    for (int i = 0 ; i< len;i++){
      final point1temp = math.Point(pointEdge.x * math.cos(angle * i)  - pointEdge.y * math.sin(angle*i),
          pointEdge.x * math.sin(angle*i)  + pointEdge.y * math.cos(angle*i));
      final point1 = point1temp + pointCenter;

      final point2temp = math.Point(pointEdge.x * math.cos(angle * (i+1))  - pointEdge.y * math.sin(angle* (i+1)),
          pointEdge.x * math.sin(angle* (i+1))  + pointEdge.y * math.cos(angle* (i+1)));
      final point2 = point2temp + pointCenter;
      final pointmiddletemp = math.Point(pointCorner.x * math.cos(angle * (i+1))  - pointCorner.y * math.sin(angle*(i+1)),
          pointCorner.x * math.sin(angle*(i+1))  + pointCorner.y * math.cos(angle*(i+1)));
      final pointmiddle = pointmiddletemp+pointCenter;
      logger.i("$point1 $pointmiddle $point2");
      if(i == 0){
          path.moveTo(point1.x*size.width,point1.y*size.height);
      }
      path.conicTo(pointmiddle.x*size.width,pointmiddle.y*size.height,point2.x*size.width,point2.y*size.height,3);
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}