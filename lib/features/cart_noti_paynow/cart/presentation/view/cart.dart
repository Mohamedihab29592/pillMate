// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pill_mate/core/components/custom_appbar.dart';
import 'package:pill_mate/features/cart/presentation/view/column_of_cart.dart';
import 'package:pill_mate/features/cart/presentation/widget/custom_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 46.h,
          ),
          child: Column(
            children: [
              const CustomAppBar(title: 'Cart'),
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) => Column(
                  children: [
                    ColumnOfCart(
                        image: 'assets/images/trash.png',
                        subTitle: '125',
                        title: 'titleLarge',
                        text2: 'text2'),
                    const Divider(
                      color: Colors.grey,
                      thickness: 2,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colors.white),
                  ),
                  Text(
                    '100\$',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
              const CyutomButton(
                text: 'Check out',
              )
            ],
          ),
        ),
      ),
    );
  }
}
