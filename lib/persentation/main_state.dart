import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:image_search_app_ver2/domain/image_item.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([])List<ImageItem> imageItem,
    @Default(false)bool isLoading,
  }) = _MainState;
  
  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json); 
}