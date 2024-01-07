import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_search_app_ver2/presentation/main_event.dart';
import 'package:image_search_app_ver2/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _textController = TextEditingController();

  StreamSubscription<MainEvent>? _subscription;

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      final viewModel = context.read<MainViewModel>();
      _subscription = viewModel.eventStream.listen((event) {
        switch (event) {
          case DataLoadingError():
            const snackBar = SnackBar(
              content: Text('데이터가 오지 않았습니다.'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MainViewModel>();
    final state = viewModel.state;
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 앱'),
        actions: [
          IconButton(
            onPressed: () {
              viewModel.fetchImages(_textController.text);
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: _textController,
          ),
          state.isLoading
              ? const CircularProgressIndicator()
              : Expanded(
                  child: GridView.builder(
                    itemCount: state.imageItems.length,
                    itemBuilder: (context, index) {
                      final imageItem = state.imageItems[index];
                      return GestureDetector(
                        onTap: () {
                          context.push('/detail', extra: imageItem);
                        },

                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.network(
                              imageItem.imageUrl,
                              width: MediaQuery.of(context).size.width * 0.1,
                              height: MediaQuery.of(context).size.height * 0.1,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 28,
                      mainAxisSpacing: 28,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
