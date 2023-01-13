import 'package:flutter/material.dart';
import '../../l10n/gen/app_localizations.dart';
import '../../l10n/l10n.dart';
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
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: L10n.all,
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
