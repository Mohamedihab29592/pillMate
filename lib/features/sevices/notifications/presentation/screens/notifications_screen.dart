import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/components/back_arrow.dart';
import 'package:pill_mate/core/components/custom_app_bar.dart';

import '../../../../../core/utils/app_colors.dart';

import '../../data/models/notification_model.dart';
import '../store/notification_cubit.dart';
import '../store/notification_state.dart';

// ignore: must_be_immutable
class NotificationScreen extends StatelessWidget {
   NotificationScreen({super.key});

   List<NotificationModel> notifications =  [
    const NotificationModel(
        notificationImage: "assets/images/n1.png",
        notificationTitle: 'Et laboriosam odio sed. Ab dolorem dolorem fugiat volup.'),
    const NotificationModel(
        notificationImage: "assets/images/n2.png",
        notificationTitle: 'Et laboriosam odio sed. Ab dolorem dolorem fugiat volup.'),
    const NotificationModel(
        notificationImage: "assets/images/n3.png",
        notificationTitle: 'Et laboriosam odio sed. Ab dolorem dolorem fugiat volup.'),
    const NotificationModel(
        notificationImage: "assets/images/n4.png",
        notificationTitle: 'Et laboriosam odio sed. Ab dolorem dolorem fugiat volup.'),
  ];

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);
    return BlocProvider(
      create: (BuildContext context) {
        return NotificationCubit();
      },
      child: BlocConsumer<NotificationCubit, NotificationStates>(
        builder: (context, state) {
          return Scaffold(
            appBar: CustomAppBar(appBarTitle: "Notifications",appBarAction: [
             Image.asset("assets/images/shopping-bag.png",scale: 3,color: Theme.of(context).brightness == Brightness.dark ?AppColors.kDarkPrimaryColor:AppColors.kPrimaryColor,),

            ],backArrow: BackArrow(),


            ),
            body: Container(
              width: mq.size.width,
              height: mq.size.height,
              padding: EdgeInsets.only(top: mq.size.height * 0.05),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0,right: 15,left: 15),
                child: Column(
                children: List.generate(notifications.length, (index) {
                  return Column(
                    children: [
                      ListTile(onTap: (){

                      },
                        title: Text(notifications[index].notificationTitle,),
                        leading: Image(
                          width: mq.size.width * 0.2,
                          height: mq.size.height * 0.2,
                          image: AssetImage(notifications[index].notificationImage),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: Theme.of(context).brightness == Brightness.dark ?AppColors.kDarkPrimaryColor:AppColors.kPrimaryColor,
                      )
                    ],
                  );
                }).toList(),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
