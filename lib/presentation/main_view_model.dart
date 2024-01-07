import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_search_app_ver2/data/repository/image_item_repository.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';
import 'package:image_search_app_ver2/presentation/main_event.dart';
import 'package:image_search_app_ver2/presentation/main_state.dart';
import 'package:image_search_app_ver2/result/result.dart';

class MainViewModel extends ChangeNotifier {
  //
  final ImageItemRepository _imageItemRepository;

  // MainState 변수
  MainState _state = const MainState();

  MainState get state => _state;

  final _eventController = StreamController<MainEvent>();


   MainViewModel({
    required ImageItemRepository imageItemRepository,
  }) : _imageItemRepository = imageItemRepository;
  Stream<MainEvent> get eventStream => _eventController.stream;

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