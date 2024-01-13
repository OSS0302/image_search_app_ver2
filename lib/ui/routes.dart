import 'package:go_router/go_router.dart';
import 'package:image_search_app_ver2/di/di_setup.dart';
import 'package:provider/provider.dart';
import '../domain/model/image_item.dart';
import '../presentation/main_screen.dart';
import '../presentation/main_veiw_model.dart';
import 'detail/detail_screen.dart';

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
