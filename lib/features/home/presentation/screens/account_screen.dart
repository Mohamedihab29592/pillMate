import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/appCubit/app_cubit.dart';
import 'package:pill_mate/core/appCubit/app_state.dart';
import 'package:pill_mate/core/components/custom_app_bar.dart';
import 'package:pill_mate/core/functions/navigate.dart';
import 'package:pill_mate/core/utils/app_assets.dart';

import '../../../../core/routes/app_routes.dart';
import '../bloc/cubit/profile/profile_cubit.dart';
import '../bloc/state/profile/profile_state.dart';
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
          return Scaffold(
            appBar: const CustomAppBar(appBarTitle: 'Account',),
            body: Container(
              width: mq.size.width,
              height: mq.size.height,
              padding: EdgeInsets.only(top: mq.size.height * 0.05),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    child: Image(
                      image: AssetImage(ImageAssets.imagesProfile),
                    ),
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
                  Expanded(
                    child: AccountItem(
                      preffixImage: ImageAssets.imagesUser,
                      suffixImage: ImageAssets.imagesRight,
                      imageHeight: mq.size.height * 0.08,
                      imageWidth: mq.size.width * 0.08,
                      itemHeight: mq.size.height * 0.06,
                      title: "Profile",
                      onTapAction: () {
                        navigate(context: context, route: Routes.profileScreen);
                      },
                    ),
                  ),
                  Expanded(
                    child: ToggleItem(
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
                  ),
                 BlocBuilder<LocaleCubit,LocalStates>(builder: (context,state){
                   return  Expanded(
                     child: ToggleItem(
                       imageHeight: mq.size.height * 0.08,
                       imageWidth: mq.size.width * 0.08,
                       itemHeight: mq.size.height * 0.06,
                       title: "Dark Mode",
                       isEnabled: LocaleCubit.get(context).isDarkMode,
                       onTapAction: () {
                         LocaleCubit.get(context).changeAppMode();

                       },
                       preffixImage: ImageAssets.imagesMoon,
                     ),
                   );
                 }),
                  Expanded(
                    child: AccountItem(
                      preffixImage: ImageAssets.imagesGlobal,
                      suffixImage: ImageAssets.imagesRight,
                      imageHeight: mq.size.height * 0.08,
                      imageWidth: mq.size.width * 0.08,
                      itemHeight: mq.size.height * 0.06,
                      title: "Language",
                      onTapAction: () {

                      },
                    ),
                  ),
                  Expanded(
                    child: AccountItem(
                      preffixImage: ImageAssets.imagesWallet3,
                      suffixImage: ImageAssets.imagesRight,
                      imageHeight: mq.size.height * 0.08,
                      imageWidth: mq.size.width * 0.08,
                      itemHeight: mq.size.height * 0.06,
                      title: "payment Method",
                      onTapAction: () {},
                    ),
                  ),
                  Expanded(
                    child: AccountItem(
                      preffixImage: ImageAssets.imagesCall,
                      suffixImage: ImageAssets.imagesRight,
                      imageHeight: mq.size.height * 0.08,
                      imageWidth: mq.size.width * 0.08,
                      itemHeight: mq.size.height * 0.06,
                      title: "contact us",
                      onTapAction: () {},
                    ),
                  ),
                  Expanded(
                    child: AccountItem(
                      preffixImage: ImageAssets.imagesLogout,
                      imageHeight: mq.size.height * 0.08,
                      imageWidth: mq.size.width * 0.08,
                      itemHeight: mq.size.height * 0.06,
                      title: "Log Out",
                      onTapAction: () {
                        navigateAndKill(context: context, route: Routes.login);
                      },
                    ),
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
