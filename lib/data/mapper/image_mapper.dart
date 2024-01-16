import 'package:image_search_app_ver2/data/dto/image_dto.dart';
import 'package:image_search_app_ver2/domain/image_item.dart';

extension ToImageDto on Hits {
  ImageItem toImageItem() {
    return ImageItem(
        tage: tags ?? '', imageUrl: previewURL ?? '이미지가 없습니다.', id: id as int);
  }
}