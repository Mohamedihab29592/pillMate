import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/utils/themes.dart';
import 'package:pill_mate/features/profile/presentation/store/profile_cubit.dart';
import '../../../../core/utils/app_colors.dart';
import '../store/profile_state.dart';
import '../widgets/account_item.dart';
import '../widgets/toggleItem.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mq = MediaQuery.of(context);
    ThemeData th = Theme.of(context);
    return BlocProvider(
      create: (BuildContext context) {
        return ProfileScreenCubit();
      },
      child: BlocConsumer<ProfileScreenCubit, ProfileState>(
        builder: (context, state) {
          ProfileScreenCubit profileScreenCubit =
          ProfileScreenCubit.get(context);
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
                "Account",
                style: TextStyle(fontSize: 15),
              ),
              elevation: 0,
            ),
            body: Container(
              color: AppColors.white,
              width: mq.size.width,
              height: mq.size.height,
              padding: EdgeInsets.only(top: mq.size.height * 0.05),
              child: Column(
                children: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage('assets/images/profile.png'),
                    ),
                    radius: 60,
                  ),
                  SizedBox(
                    height: mq.size.height * 0.02,
                  ),
                  Text(
                    "Account Name",
                    style: AppThemes.lightMode.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: mq.size.height * 0.03,
                  ),
                  AccountItem(
                    preffixImage: 'assets/images/user.png',
                    suffixImage: 'assets/images/right.png',
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "Profile",
                    onTapAction: (){

                    },
                  ),
                  ToggleItem(
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "notifications",
                    isEnabled: ProfileScreenCubit.get(context).isNotificationEnabled,
                    onTapAction: (){
                      ProfileScreenCubit.get(context).changeNotification();
                    },
                    preffixImage: 'assets/images/notification-bing.png',
                  ),
                  ToggleItem(
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "Dark Mode",
                    isEnabled: ProfileScreenCubit.get(context).isDarkModeEnabled,
                    onTapAction: (){
                      ProfileScreenCubit.get(context).changeDarkMode();
                    },
                    preffixImage: 'assets/images/moon.png',
                  ),
                  AccountItem(
                    preffixImage: 'assets/images/global.png',
                    suffixImage: 'assets/images/right.png',
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "Language",
                    onTapAction: (){

                    },
                  ),
                  AccountItem(
                    preffixImage: 'assets/images/wallet-3.png',
                    suffixImage: 'assets/images/right.png',
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "payment Method",
                    onTapAction: (){

                    },
                  ),
                  AccountItem(
                    preffixImage: 'assets/images/call.png',
                    suffixImage: 'assets/images/right.png',
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "contact us",
                    onTapAction: (){

                    },
                  ),
                  AccountItem(
                    preffixImage: 'assets/images/logout.png',
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "Log Out",
                    onTapAction: (){

                    },
                  ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
