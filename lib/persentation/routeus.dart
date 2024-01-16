import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_app_ver2/di/di_setup.dart';
import 'package:image_search_app_ver2/domain/image_item.dart';
import 'package:image_search_app_ver2/persentation/detail/detail_screen.dart';
import 'package:image_search_app_ver2/persentation/main_screen.dart';
import 'package:image_search_app_ver2/persentation/main_veiw_model.dart';
import 'package:provider/provider.dart';

final router = GoRouter(
  routes: [
  GoRoute(
  path: '/',
  builder: (context, state) => ChangeNotifierProvider(
    create: (_) => getit<MainViewModel>(),
    child: const MainScreen(),
  ),
),
    GoRoute(
      path: '/detail',
      builder: (context, state){
        final imageItem =state.extra as ImageItem;
        return DetailScreen(imageItem: imageItem);
      },
    ),
  ],
);