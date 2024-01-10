import 'dart:async';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/presentation/main/main_event.dart';
import 'package:image_search_app_ver2/presentation/main/main_view_model.dart';

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
          case ShowSnackBar():
            final snackBar = SnackBar(
              content: Text(event.message),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                labelText: '이미지를 입력하세요~!',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    viewModel.fetchImages(_textController.text);
                  },
                ),
              ),
              onSubmitted: (value) {
                FocusScope.of(context).unfocus();
                viewModel.fetchImages(value);
              },
            ),
          ),
          state.isLoading
              ? Expanded(
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : Expanded(
                  child: GridView.builder(
                    itemCount: state.imageItems.length,
                    itemBuilder: (context, index) {
                      final imageItem = state.imageItems[index];
                      return GestureDetector(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text('자세한화면을 보시겠습니까?.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      context.pop();
                                    },
                                    child: Text('닫기'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context.pop(true);
                                      context.push('/detail', extra: imageItem);
                                    },
                                    child: Text('확인'),
                                  ),
                                ],
                              );
                            },
                          ).then((value) {
                            if (value != null && value) {
                              print('오카이!');
                            }
                          });
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
