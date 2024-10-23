import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:valuelist/navigation/route_paths.dart';
import 'package:valuelist/views/pages/value_list/value_selection_page.dart';

import '../views/pages/value_list/first_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: RoutePaths.home,
        builder: (context, state) => const FirstPage(),
      ),
      GoRoute(
        path: RoutePaths.firstPage,
        builder: (context, state) => const FirstPage(),
      ),
      GoRoute(
        path: RoutePaths.valueSelectionPage,
        builder: (context, state) => const ValueSelectionPage(),
      ),
    ],
    // redirect: (context, state) {
    //   // プロバイダから認証状態を監視
    //   final isLoggedIn = ref.read(authProvider);
    //
    //   // 未認証のユーザーが認証が必要なページに行こうとした場合、ログインページにリダイレクト
    //   final loggingIn = state.subloc == RoutePaths.login;
    //   if (!isLoggedIn && !loggingIn) {
    //     return RoutePaths.login;
    //   }
    //
    //   // 認証済みのユーザーがログインページに行こうとした場合、ホームにリダイレクト
    //   if (isLoggedIn && loggingIn) {
    //     return RoutePaths.home;
    //   }
    //
    //   return null; // それ以外はリダイレクトしない
    // },
  );
});
