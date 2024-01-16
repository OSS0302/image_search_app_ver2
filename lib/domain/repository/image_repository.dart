import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/domain/image_item.dart';

abstract interface class  ImageRepository{
  Future<Result<List<ImageItem>>> getImageItems (String query);
}