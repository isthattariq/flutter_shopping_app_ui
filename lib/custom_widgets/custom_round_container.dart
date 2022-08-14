import 'package:flutter/material.dart';

class CustomRoundContainer extends StatelessWidget {
   CustomRoundContainer({
    Key? key, required this.onTap, this.nameImage, this.containerColor, this.containerHeight, this.containerWidth, this.price, required this.brandText
  }) : super(key: key);

  late VoidCallback onTap;
  Color? containerColor;
  final nameImage;
  final containerHeight;
  final containerWidth;
  final brandText;
  final price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(19),
            onTap: onTap,
            child: Container(
              height: containerHeight,
              width: containerWidth,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Image.asset('assets/$nameImage'),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '$brandText',
            style: TextStyle(fontSize: 18.0, color: Colors.grey),
          ),
          Text(
            '\$$price',
            style:
            TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
