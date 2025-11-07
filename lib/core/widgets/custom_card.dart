import 'dart:math';

import 'package:flutter/material.dart';
import '../constants/app_assets.dart';
import '../theme/app_colors.dart';
class CustomCard extends StatefulWidget {
  final String? title;
  final String? price;
  final String? image;
  const CustomCard({super.key, required this.title, required this.price, required this.image});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              //spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite;
                  print("IS FAV $isFavorite");
                });
              },
              icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border, color: AppColor.primaryColor),
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.asset(widget.image?? AppAssets.honeyLime, width: 80, height: 80),
                  SizedBox(height: 12),
                  Text(widget.title ?? 'Honey lime combo',

                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${widget.price ?? 2000} ",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColor.primaryColor,

                          ),
                        ),
                        IconButton.filledTonal(
                            style: IconButton.styleFrom(
                                backgroundColor: Color(0xffFFF2E7),
                              fixedSize: Size(20, 24)
                            ),
                            onPressed: (){},
                            icon: Icon(Icons.add,color: AppColor.primaryColor,size: 28,weight: 600,)),
                      ]
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
