import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> productName = [
  "Stylist Pink Nail Paint",
  "Beauty Cream Special Natural Made By Hand",
  "Pure Honey Multi Flora 500mg",
  "Slim White Grey shirt",
  "Soul Tree Special Lipstick ",
  "Altra Special LipSticks ",
  "Boscia Cream"
];

Widget addVerticalSpace(double height) {
  return SizedBox(height: height);
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}

Widget addProducts(int i) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white]),
    ),
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(10),
    width: 200,
    height: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image(image: AssetImage("p$i.jfif")),
        Text(productName[--i],
            style: const TextStyle(fontSize: 12, color: Colors.black)),
        const Text("Rs. 990.0",
            style: TextStyle(fontSize: 14, color: Colors.blue))
      ],
    ),
  );
}

Widget blogCard() {
  return SizedBox(
    width: 200,
    child: Stack(
      children: [
        const Image(image: AssetImage("s1.jpg"), height: 250, width: 200),
        Container(
          margin: EdgeInsets.only(top: 180),
          width: 200,
          height: 90,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Colors.white]),
          ),
          padding: const EdgeInsets.all(10),
          child: const Center(
              child: Text(
                  "How did you want to sell your own made Products on yconst our website just follow and get ideas",
                  style: TextStyle(fontSize: 10))),
        ),
        Container(
          margin: const EdgeInsets.only(top: 150, left: 75),
          child: const CircleAvatar(
            backgroundImage: AssetImage("profile.jpg"),
            radius: 25,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 260),
          child: const Row(
            children: [
              SizedBox(
                  width: 66.60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("23 ", style: TextStyle(color: Colors.black)),
                        Icon(CupertinoIcons.heart_fill,
                            color: Colors.grey, size: 16)
                      ])),
              SizedBox(
                  width: 66.60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("6 ", style: TextStyle(color: Colors.black)),
                        Icon(Icons.comment_rounded,
                            color: Colors.grey, size: 16)
                      ])),
              SizedBox(
                  width: 66.60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("564 ", style: TextStyle(color: Colors.black)),
                        Icon(CupertinoIcons.eye_solid,
                            color: Colors.grey, size: 16)
                      ]))
            ],
          ),
        )
      ],
    ),
  );
}
