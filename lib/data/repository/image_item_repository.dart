import 'package:image_search_app_ver2/domain/model/image_item.dart';

abstract interface class ImageItemRepository {
  Future<List<ImageItem>>getImageItems(String query);
}