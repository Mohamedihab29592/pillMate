import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/utils/themes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../profile/presentation/store/profile_cubit.dart';
import '../../../profile/presentation/store/profile_state.dart';

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
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                iconSize: 15,
                color: AppColors.black,
                onPressed: () {},
              ),
              titleTextStyle: TextStyle(color: AppColors.black),
              centerTitle: true,
              backgroundColor: AppColors.kPrimaryColor,
              title: const Text("Edit Profile"),
              elevation: 0,
            ),
            body: Container(
              color: AppColors.kPrimaryColor,
              width: mq.size.width,
              height: mq.size.height,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: mq.size.width,
                      height: mq.size.height * 0.76,
                      padding: const EdgeInsets.only(
                          left: 12.0, right: 10.0, bottom: 5.0, top: 5.0),
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
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
                              child: Row(
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
                          Container(
                            margin:
                            const EdgeInsets.only(bottom: 5.0, top: 5.0),
                            height: mq.size.height * 0.1,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.black),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/user.png'),
                                    ),
                                  ),
                                  VerticalDivider(
                                      thickness: 1,
                                      width: mq.size.width * 0.1,
                                      color: Colors.black26
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Name",
                                          style:
                                          AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                        SizedBox(
                                          height: mq.size.height * 0.005,
                                        ),
                                        Text(
                                          "Ahmed Gamil",
                                          style: AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/edit.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                            const EdgeInsets.only(bottom: 5.0, top: 5.0),
                            height: mq.size.height * 0.1,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.black),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/sms.png'),
                                    ),
                                  ),
                                  VerticalDivider(
                                      thickness: 1,
                                      width: mq.size.width * 0.1,
                                      color: Colors.black26
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "email",
                                          style:
                                          AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                        SizedBox(
                                          height: mq.size.height * 0.005,
                                        ),
                                        Text(
                                          "a.g@example.com",
                                          style: AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/edit.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                            const EdgeInsets.only(bottom: 5.0, top: 5.0),
                            height: mq.size.height * 0.1,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.black),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/call.png'),
                                    ),
                                  ),
                                  VerticalDivider(
                                      thickness: 1,
                                      width: mq.size.width * 0.1,
                                      color: Colors.black26
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Phone",
                                          style:
                                          AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                        SizedBox(
                                          height: mq.size.height * 0.005,
                                        ),
                                        Text(
                                          "+201078533962",
                                          style: AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/edit.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                            const EdgeInsets.only(bottom: 5.0, top: 5.0),
                            height: mq.size.height * 0.1,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: AppColors.black),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/lock.png'),
                                    ),
                                  ),
                                  VerticalDivider(
                                      thickness: 1,
                                      width: mq.size.width * 0.1,
                                      color: Colors.black26
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Password",
                                          style:
                                          AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                        SizedBox(
                                          height: mq.size.height * 0.005,
                                        ),
                                        Text(
                                          "12*********",
                                          style: AppThemes.lightMode.textTheme.titleLarge,
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){

                                    },
                                    child: Image(
                                      width: mq.size.width * 0.08,
                                      height: mq.size.height * 0.08,
                                      image: AssetImage('assets/images/edit.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.only(bottom: 5.0, top: 5.0),
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
// Set border radius
                              color: AppColors.kPrimaryColor,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(10.0),
// Match the border radius
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  width: mq.size.width,
                                  height: mq.size.height * 0.07,
                                  child: Text(
                                    "Add An Account",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: mq.size.height * 0.04,
                    left: mq.size.width / 3,
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage('assets/images/profile.png'),
                      ),
                      radius: 60,
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
