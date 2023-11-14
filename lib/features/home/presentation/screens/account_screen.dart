import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/utils/app_assets.dart';

import '../../../../core/routes/app_routes.dart';
import '../bloc/store/profile_cubit.dart';
import '../bloc/store/profile_state.dart';
import '../widgets/profile_screen/account_item.dart';
import '../widgets/profile_screen/toggleItem.dart';


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
                onPressed: () {},
              ),
              titleTextStyle: th.textTheme.titleLarge,
              centerTitle: true,
              title: Text(
                "Account",
                style: th.textTheme.titleSmall,
              ),
              elevation: 0,
            ),
            body: Container(
              width: mq.size.width,
              height: mq.size.height,
              padding: EdgeInsets.only(top: mq.size.height * 0.05),
              child: Column(
                children: [
                  CircleAvatar(
                    child: Image(
                      image: AssetImage(ImageAssets.imagesProfile),
                    ),
                    radius: 60,
                  ),
                  SizedBox(
                    height: mq.size.height * 0.02,
                  ),
                  Text(
                    "Account Name",
                    style: th.textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: mq.size.height * 0.03,
                  ),
                  AccountItem(
                    preffixImage: ImageAssets.imagesUser,
                    suffixImage: ImageAssets.imagesRight,
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    isDarkModeEnabled: profileScreenCubit.isDarkModeEnabled,
                    title: "Profile",
                    onTapAction: () {
                      navigate(context: context, route: Routes.profileScreen);
                    },
                  ),
                  ToggleItem(
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "notifications",
                    isEnabled:
                        ProfileScreenCubit.get(context).isNotificationEnabled,
                    onTapItemAction: (){
                      navigate(context: context, route: Routes.notificationScreen);
                    },
                    onTapAction: () {
                      ProfileScreenCubit.get(context).changeNotification();
                    },
                    preffixImage: ImageAssets.imagesNotificationBing,
                  ),
                  ToggleItem(
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "Dark Mode",
                    isEnabled:
                    ProfileScreenCubit.get(context).isDarkModeEnabled,
                    onTapAction: () {
                      profileScreenCubit.changeAppTheme();
                    },
                    preffixImage: ImageAssets.imagesMoon,
                  ),
                  AccountItem(
                    preffixImage: ImageAssets.imagesGlobal,
                    suffixImage: ImageAssets.imagesRight,
                    imageHeight: mq.size.height * 0.08,
                    isDarkModeEnabled: profileScreenCubit.isDarkModeEnabled,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "Language",
                    onTapAction: () {

                    },
                  ),
                  AccountItem(
                    preffixImage: ImageAssets.imagesWallet3,
                    suffixImage: ImageAssets.imagesRight,
                    imageHeight: mq.size.height * 0.08,
                    isDarkModeEnabled: profileScreenCubit.isDarkModeEnabled,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "payment Method",
                    onTapAction: () {},
                  ),
                  AccountItem(
                    preffixImage: ImageAssets.imagesCall,
                    suffixImage: ImageAssets.imagesRight,
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    title: "contact us",
                    isDarkModeEnabled: profileScreenCubit.isDarkModeEnabled,
                    onTapAction: () {},
                  ),
                  AccountItem(
                    preffixImage: ImageAssets.imagesLogout,
                    imageHeight: mq.size.height * 0.08,
                    imageWidth: mq.size.width * 0.08,
                    itemHeight: mq.size.height * 0.06,
                    isDarkModeEnabled: profileScreenCubit.isDarkModeEnabled,
                    title: "Log Out",
                    onTapAction: () {},
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
