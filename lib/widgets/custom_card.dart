import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/models/product_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.product});
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 50,
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              offset: Offset(0, 2))
        ]),
        child: Card(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 4,
                  style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product.price}',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(FontAwesomeIcons.heart))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        right: 35.w,
        top: -60,
        child: Image.network(
          product.image,
          height: 100.h,
          width: 100.w,
        ),
      )
    ]);
  }
}
