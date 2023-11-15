import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_state.dart';

class LocaleCubit extends Cubit<LocalStates> {

  LocaleCubit() : super(InitialState());
  static LocaleCubit get(context) => BlocProvider.of(context);
  bool isDarkMode = true;

  void changeAppMode({ bool ? fromShared})async {
    if (fromShared != null) {

      isDarkMode = fromShared;
    } else {
      isDarkMode = !isDarkMode;
      final sharedPreferences = await SharedPreferences.getInstance();
      sharedPreferences.setBool('isDarkMode',  isDarkMode).then((value) {
      });
    }
    emit(ChangeAppModeSucces());
  }
}
