import 'package:image_search_app_ver2/data/data_source/image_api.dart';
import 'package:image_search_app_ver2/data/dto/image_dto.dart';
import 'package:image_search_app_ver2/data/mapper/image_mapper.dart';
import 'package:image_search_app_ver2/data/repository/image_item_repository.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';
import 'package:image_search_app_ver2/result/result.dart';

class ImageItemRepositoryImpl implements ImageItemRepository {
  final ImageApi _api;

  const ImageItemRepositoryImpl({
    required ImageApi api,
  }) : _api = api;


  @override
  Future<Result<List<ImageItem>>> getImageItems(String query) async {
    try {
      final json = await _api.getImageResult(query);
      final dto = ImageDto.fromJson(json);

      if (dto.hits == null) {
        return Result.error(Exception('데이터가 없습니다'));
      }

      return Result.success(dto.hits!.map((e) => e.toImageItem()).toList());
    } catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}
