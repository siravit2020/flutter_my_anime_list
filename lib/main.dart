import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_my_anime_list/app/app_theme.dart';
import 'package:flutter_my_anime_list/di/injector.dart';
import 'package:flutter_my_anime_list/router/router.dart';
import 'package:flutter_my_anime_list/shared/cubit/app_theme_cubit.dart';

void main() async {
  await dotenv.load();
  await initializeDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('th'),
      ],
      path: 'assets/translations/langs.csv',
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      assetLoader: CsvAssetLoader(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppThemeCubit(),
      child: BlocBuilder<AppThemeCubit, AppTheme>(
        builder: (context, state) {
          return MaterialApp.router(
            routerConfig: router,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: state.themeData,
          );
        },
      ),
    );
  }
}
