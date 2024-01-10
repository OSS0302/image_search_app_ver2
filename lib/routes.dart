import 'package:go_router/go_router.dart';
import 'package:image_search_app_ver2/di/di_setup.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';
import 'package:image_search_app_ver2/presentation/main/main_screen.dart';
import 'package:image_search_app_ver2/ui/detail_screen/detail_screen.dart';
import 'package:provider/provider.dart';

import 'presentation/main/main_view_model.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) {
        final imageItem = state.extra as ImageItem;
        return DetailScreen(imageItem: imageItem);
      },
    ),
  ],
);