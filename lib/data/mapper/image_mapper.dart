import 'package:image_search_app_ver2/data/dto/pixabay_dto.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

extension ImageMapper on Hits {
  ImageItem toImageItem() {
    return ImageItem(imageUrl: previewURL ??'', tags: tags ??'', id: id as int);
  }
}