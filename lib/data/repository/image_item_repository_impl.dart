import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/data/data_source/pixabay_api.dart';
import 'package:image_search_app_ver2/data/dto/pixabay_dto.dart';
import 'package:image_search_app_ver2/data/mapper/image_mapper.dart';
import 'package:image_search_app_ver2/domain/repository/image_item_repository.dart';
import 'package:image_search_app_ver2/domain/model/image_item.dart';

class ImageRepositoryImpl implements ImageItemRepository {
  final PixabayApi _api;

  ImageRepositoryImpl({
    required PixabayApi api,
  }) : _api = api;

  @override
  Future<Result<List<ImageItem>>> getImageItems(String query) async{
    try {
      final json = await _api.getImageResult(query);
      final dto  = PixabayDto.fromJson(json);

      if(dto.hits == null) {
        return Result.error(Exception('데이터가 없네요'));
      }
      return Result.success(dto.hits!.map((e) => e.toImageItem()).toList());
    }catch (e) {
      return Result.error(Exception(e.toString()));
    }
  }
}