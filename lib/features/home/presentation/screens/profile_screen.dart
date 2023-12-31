import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/components/back_arrow.dart';
import 'package:pill_mate/core/components/custom_app_bar.dart';
import '../../../../core/components/custom_button.dart';
import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../bloc/cubit/profile/profile_cubit.dart';
import '../bloc/state/profile/profile_state.dart';
import '../widgets/profile_screen/text_field_item.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            appBar: CustomAppBar(color:AppColors.kDarkPrimaryColor,appBarTitle: 'Edit Profile',style: const TextStyle(color: AppColors.black),backArrow: BackArrow(color: AppColors.black,),),
            body: SingleChildScrollView(

              child: Container(
                color: AppColors.kDarkPrimaryColor,
                width: mq.size.width,
                height: mq.size.height,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: mq.size.width,
                        height: mq.size.height * 0.88,
                        padding: const EdgeInsets.only(
                            left: 12.0, right: 10.0, bottom: 5.0, top: 5.0),
                        decoration: BoxDecoration(
                            color: th.scaffoldBackgroundColor,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            )),
                        child: Column(
                          children: [
                            SizedBox(
                              height: mq.size.height * 0.1,
                            ),
                            GestureDetector(
                              child: SizedBox(
                                width: mq.size.width * 0.7,
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Change Profile",
                                    ),
                                    Icon(Icons.edit)
                                  ],
                                ),
                              ),
                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.nameTextEditingController,
                              labelText: "Name",
                              prefixImage: ImageAssets.imagesUser,
                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.emailTextEditingController,
                              labelText: "email",
                              prefixImage: ImageAssets.sms,
                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.phoneTextEditingController,
                              labelText: "phone",
                              prefixImage: ImageAssets.imagesCall,

                            ),
                            TextFieldItem(
                              itemTextEditingController: profileScreenCubit.passwordTextEditingController,
                              labelText: "password",
                              prefixImage: ImageAssets.lock,
                              isObsecure: true,
                            ),
                            CustomButton(onTap: () {  }, text: 'Add An Account',),

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: mq.size.height * 0.04,
                      left: mq.size.width / 3,
                      child: const CircleAvatar(
                        radius: 60,
                        child: Image(
                          image: AssetImage(ImageAssets.imagesProfile),
                        ),
                      ),
                    ),
                  ],
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
