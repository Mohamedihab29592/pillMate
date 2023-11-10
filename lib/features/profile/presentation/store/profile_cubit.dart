import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'profile_state.dart';

class ProfileScreenCubit extends Cubit<ProfileState> {
  ProfileScreenCubit() : super(ProfileStateInitial());

  static ProfileScreenCubit get(BuildContext context) =>
      BlocProvider.of(context);
  bool isNotificationEnabled = true;
  bool isDarkModeEnabled = true;

  void changeNotification()
  {
    isNotificationEnabled = !isNotificationEnabled;
    emit(NotificationsChangedStatus());
  }

  void changeDarkMode()
  {
    isDarkModeEnabled = !isDarkModeEnabled;
    emit(DarkModeChangedStatus());
  }
}
