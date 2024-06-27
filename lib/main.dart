import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'res/app_theme.dart';
import 'utils/logger_helpers.dart';
import 'utils/routes/routes.dart';
import 'utils/routes/routes_name.dart';
import 'view_model/theme_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  ThemeViewModel theme = ThemeViewModel();
  await theme.getTheme();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', null)],
      path: 'assets/translations',
      child: MyApp(
        theme: theme,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final ThemeViewModel theme;

  const MyApp({super.key, required this.theme});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => theme,
        )
      ],
      child: Consumer<ThemeViewModel>(builder: (context, provider, child) {
        debugLog(provider.themeMode);
        return MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,
            themeMode: provider.themeMode,
            initialRoute: RoutesName.demo,
            onGenerateRoute: Routes.generateRoute);
      }),
    );
  }
}
