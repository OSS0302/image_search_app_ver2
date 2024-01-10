import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/data/repository/image_item_repository.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';
import 'package:image_search_app_ver2/presentation/main/main_event.dart';
import 'package:image_search_app_ver2/presentation/main/main_state.dart';

class MainViewModel extends ChangeNotifier {
  final ImageItemRepository _imageItemRepository;

   MainViewModel({
    required ImageItemRepository imageItemRepository,
  }) : _imageItemRepository = imageItemRepository;

  Stream<MainEvent> get eventStream => _eventController.stream;

  MainState _state = const MainState();

  MainState get state => _state;

  final _eventController = StreamController<MainEvent>();
  Future<void> fetchImages(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _imageItemRepository.getImageItems(query);

    switch (result) {
      case Success<List<ImageItem>>():
        _state = state.copyWith(
          isLoading: false,
          imageItems: result.data,

        );
        notifyListeners();
        _eventController.add(MainEvent.showSnackBar('이미지 를 가져왔습니다.!'));
      case Error<List<ImageItem>>():
        _state = state.copyWith(
          isLoading: false,
          imageItems: [],
        );
        notifyListeners();
        _eventController.add( const MainEvent.dataLoadingError());
    }
  }

}