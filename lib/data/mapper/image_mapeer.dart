
import 'package:image_search_app_ver2/data/dto/image_dto.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

extension HitsToImageItem on Hits {
  ImageItem toImageItem() {
    return ImageItem(
      tags: tags ?? '',
      imageUrl: previewURL ?? '',
      id: id as int,
    );
  }
}