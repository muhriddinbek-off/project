import 'package:flutter/material.dart';

void main () {
  Widget MayApp (String asset){
    return Container(
      margin: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: Image.asset(
          asset,
          width: 110,
          height: 110,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Container(
        color: Color.fromARGB(255, 241, 230, 187),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MayApp('image/1.jpg'),
                  MayApp('image/2.png'),
                  MayApp('image/3.png'),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MayApp('image/4.jpg'),
                  MayApp('image/5.jpg'),
                  MayApp('image/6.jpg'),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MayApp('image/7.jpg'),
                  MayApp('image/8.png'),
                  MayApp('image/9.avif'),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  ));
}