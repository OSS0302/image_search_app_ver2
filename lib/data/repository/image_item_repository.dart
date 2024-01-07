import 'package:image_search_app_ver2/domain/model/image_item.dart';
import 'package:image_search_app_ver2/result/result.dart';

abstract interface class ImageItemRepository {
  Future<Result<List<ImageItem>>>getImageItems(String query);
}