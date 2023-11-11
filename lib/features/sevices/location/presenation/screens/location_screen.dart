import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/components/custom_button.dart';
import 'package:pill_mate/core/components/custom_text_field.dart';



class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.sp),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(),
                width: MediaQuery.of(context).size.width,
                height: 500.h,
                child: Image.asset('assets/images/Medicine-bro 1.png'),
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
              CustomButton(onTap: (){},  text: "Done", ),
            ],
          ),
        ),
      ),
    );
  }
}
