import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/domain/image_item.dart';
import 'package:image_search_app_ver2/domain/repository/image_repository.dart';
import 'package:image_search_app_ver2/persentation/main_state.dart';

import 'main_event.dart';

class MainViewModel extends ChangeNotifier {
  final ImageRepository _imageRepository;

  MainViewModel({
    required ImageRepository imageRepository,
  }) : _imageRepository = imageRepository;

  MainState _state = const MainState();

  MainState get state => _state;

  final _eventController = StreamController<MainEvent>();

  Stream<MainEvent> get eventStream => _eventController.stream;

  Future<void> fetchImage(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _imageRepository.getImageItems(query);

    switch (result) {
      case Success<List<ImageItem>>():
        _state = state.copyWith(
          isLoading: false,
          imageItem: result.data,
        );
        notifyListeners();
        _eventController.add(const MainEvent.showSnackBar('이미지 가져오기 성공2'));
      case Error<List<ImageItem>>():
        _state = state.copyWith(
          isLoading: false,
          imageItem: [],
        );
        notifyListeners();
        _eventController.add(const MainEvent.LoadingError());
    }
  }
}
