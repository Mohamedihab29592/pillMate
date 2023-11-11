// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pill_mate/core/components/custom_appbar.dart';
import 'package:pill_mate/core/components/custom_button.dart';

import '../widgets/column_of_cart.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
           20
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
                      tapMinus: (){},
                        image: 'assets/images/trash.png',
                        subTitle: '200 MM',
                        title: 'Vitamin B12',
                        text2: 'text2', tapPlus: () {  },),
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
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    '100\$',
                    style: Theme.of(context).textTheme.titleMedium,


                  ),
                ],
              ),
              SizedBox(
                height: 50.h,
              ),
               CustomButton(onTap: (){},text: 'Check out', )
            ],
          ),
        ),
      ),
    );
  }
}
