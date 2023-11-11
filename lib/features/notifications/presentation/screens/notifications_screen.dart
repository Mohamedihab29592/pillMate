import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/themes.dart';
import '../../data/models/notification_model.dart';
import '../store/notification_cubit.dart';
import '../store/notification_state.dart';

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
    ThemeData th = Theme.of(context);
    return BlocProvider(
      create: (BuildContext context) {
        return NotificationCubit();
      },
      child: BlocConsumer<NotificationCubit, NotificationStates>(
        builder: (context, state) {
          NotificationCubit profileScreenCubit =
          NotificationCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 15,
                color: AppColors.black,
                onPressed: () {},
              ),
              titleTextStyle: TextStyle(color: AppColors.black),
              centerTitle: true,
              backgroundColor: AppColors.white,
              title: const Text(
                "NotificationScreen",
                style: TextStyle(fontSize: 15),
              ),
              elevation: 0,
              actions: [
                InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Image(
                      width: mq.size.width * 0.07,
                      height: mq.size.height * 0.07,
                      image: AssetImage("assets/images/shopping-bag.png"),
                    ),
                  ),
                )
              ],
            ),
            body: Container(
              color: AppColors.white,
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
                        title: Text(notifications[index].notificationTitle,style: AppThemes.lightMode.textTheme.titleLarge,),
                        leading: Image(
                          width: mq.size.width * 0.2,
                          height: mq.size.height * 0.2,
                          image: AssetImage(notifications[index].notificationImage),
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        color: AppColors.kPrimaryColor,
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
