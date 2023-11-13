import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/components/back_arrow.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_text_field.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/routes/app_routes.dart';



class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.sp),
            child: Column(
              children: [
                const Row(
                  children: [
                    BackArrow(),
                  ],
                ),
                Container(
                  decoration: const BoxDecoration(),
                  width: MediaQuery.of(context).size.width,
                  height: 300.h,
                  child: Image.asset('assets/images/map.png'),
                ),



                CustomTextField( hintText: "Adress"),

                SizedBox(
                  height: 10.h,
                ),
                CustomTextField(hintText: "Floor Number"),

                SizedBox(
                  height: 10.h,
                ),
                CustomTextField( hintText: "Apartment number"),

                SizedBox(
                  height: 16.h,
                ),
                CustomButton(onTap: (){
                  navigate(context: context, route: Routes.paymentScreen);
                },  text: "Done", ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
