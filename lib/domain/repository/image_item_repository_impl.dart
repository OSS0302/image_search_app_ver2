import 'package:image_search_app_ver2/data/data_source/image_api.dart';
import 'package:image_search_app_ver2/data/dto/image_dto.dart';
import 'package:image_search_app_ver2/data/mapper/image_mapper.dart';
import 'package:image_search_app_ver2/data/repository/image_item_repository.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

class ImageItemRepositoryImpl implements ImageItemRepository {
  final ImageApi _api;

  const ImageItemRepositoryImpl({
    required ImageApi api,
  }) : _api = api;


  @override
  Future<List<ImageItem>> getImageItems(String query) async {
      final json = await _api.getImageResult(query);
      final dto = ImageDto.fromJson(json);

      return dto.hits!.map((e) => e.toImageItem()).toList();
    }
  }
