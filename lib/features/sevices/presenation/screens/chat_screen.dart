import 'package:flutter/material.dart';
import 'package:pill_mate/core/components/back_arrow.dart';
import 'package:pill_mate/core/utils/app_text_style.dart';
import 'package:pill_mate/features/sevices/presenation/widgets/custom_chat_buble.dart';
import 'package:pill_mate/features/sevices/presenation/widgets/custom_text_field.dart';

import '../../../../core/utils/app_colors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Scaffold(

        appBar: AppBar(
          leading: BackArrow(),
            actions: [ Image.asset('assets/images/call.png'),],

          backgroundColor: const Color(0xff8BC4B5),
          title: Text(
            'Pharmacy Chat',
            style: boldStyle(color: AppColors.black, fontSize: 17)
            ),
          ),





        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 28),
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  CustomPharmacyChatBuble(
                    message:
                        'Perferendis animi est in itaque quisquam iure laborum .',
                  ),
                  CustomChatBuble(
                    message:
                        'Perferendis animi est in itaque quisquam iure laborum .',
                  ),
                  CustomPharmacyChatBuble(
                    message:
                        'Perferendis animi est in itaque quisquam iure laborum .',
                  ),
                  CustomChatBuble(
                    message:
                        'Perferendis animi est in itaque quisquam iure laborum .',
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 63,
              decoration: const BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/camera.png'),
                    ),
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/microphone-2.png'),
                    ),
                    SizedBox(
                        width: 240,
                        height: 32,
                        child: CustomTextField(
                          hintText: 'Write Here',
                          color: const Color(0xffEAEAEA),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff000000),
                          ),
                        )),
                    SizedBox(
                      height: 24,
                      width: 24,
                      child: Image.asset('assets/images/send-2.png'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
