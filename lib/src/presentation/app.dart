import 'package:flutter/material.dart';
import 'configs/config.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: AppNavigator.getRoute,
            navigatorKey: AppNavigator.navigatorKey,
            initialRoute: Routes.splashScreen,
            title: 'Mvp',
            home: child,
          ),
        );
      },
    );
  }
}
