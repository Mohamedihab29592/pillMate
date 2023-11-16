import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pill_mate/core/appCubit/app_cubit.dart';
import 'package:pill_mate/core/appCubit/app_state.dart';
import 'package:pill_mate/core/routes/app_routes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pill_mate/core/utils/app_strings.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'core/utils/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();
  bool? isDarkMode = sharedPreferences.getBool("isDarkMode") ?? false;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness:
    isDarkMode ? Brightness.light : Brightness.dark,
  ));
  runApp(MyApp(isDarkMode: isDarkMode));
}

class MyApp extends StatelessWidget {
  final bool isDarkMode;

  const MyApp({Key? key, required this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LocaleCubit()..changeAppMode(fromShared: isDarkMode),
        ),
      ],
      child: BlocBuilder<LocaleCubit, LocalStates>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(428, 926),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: AppStrings.appName,
              themeMode: BlocProvider.of<LocaleCubit>(context).isDarkMode
                  ? ThemeMode.dark
                  : ThemeMode.light,
              darkTheme: AppThemes.darkMode,
              theme: AppThemes.lightMode,
              initialRoute: Routes.initialRoute,
              routes: buildRoutes(context),
              builder: (context, child) {
                return AnnotatedRegion<SystemUiOverlayStyle>(
                  value: SystemUiOverlayStyle(
                    statusBarColor: Colors.transparent,
                    statusBarIconBrightness:
                    BlocProvider.of<LocaleCubit>(context).isDarkMode
                        ? Brightness.light
                        : Brightness.dark,
                  ),
                  child: child!,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
