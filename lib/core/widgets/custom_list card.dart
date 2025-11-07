import 'package:flutter/material.dart';
import '../../feature/home/data/models/product.dart';
import '../constap_assets.dart';
import '../theme/app_colors.dart';

class CustomList extends StatefulWidget {
  final ProductModel productModel;

  const CustomList({super.key, required this.productModel});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 150,
      width: 190,
      decoration: BoxDecoration(
        color: widget.productModel.bgColor,
        borderRadius: BorderRadius.circular(12),
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
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: AppColor.primaryColor,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  widget.productModel.image,
                  width: 64,
                  height: 64,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.productModel.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppColor.black,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ ${widget.productModel.price}",
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: AppColor.primaryColor,
                      ),
                    ),
                    IconButton.filledTonal(
                      style: IconButton.styleFrom(
                        backgroundColor: const Color(0xffFFF2E7),
                        fixedSize: const Size(20, 24),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: AppColor.primaryColor,
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
