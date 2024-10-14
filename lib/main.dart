import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:valuelist/utils/theme.dart';

import 'views/pages/value_list/FirstPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /// ルーティング設定
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const FirstPage(),
        ),
        // 他のルートを追加する場合
      ],
    );

    return MaterialApp.router(
      routerConfig: router,

      /// テーマ設定
      theme: AppTheme.lightTheme,

      /// 言語設定
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ja'),
      ],
    );
  }
}
