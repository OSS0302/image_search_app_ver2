import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/data/dto/image_dto.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

abstract interface class ImageRepository {
  Future<Result<List<ImageItem>>> getImageResult(String query);
}