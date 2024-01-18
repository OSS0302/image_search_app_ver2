import 'package:image_search_app_ver2/data/dto/pixabay_dto.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

extension ToModel on Hits {
  ImageItem toImageItem(){
    return ImageItem(imageUrl: previewURL ?? '', tage: tags ?? '', id: id as int);
  }
}