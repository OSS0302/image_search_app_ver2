import 'package:image_search_app_ver2/core/result.dart';
import 'package:image_search_app_ver2/data/daa_source/pixabay_api.dart';
import 'package:image_search_app_ver2/data/dto/image_dto.dart';
import 'package:image_search_app_ver2/data/mapper/image_mapper.dart';
import 'package:image_search_app_ver2/domain/image_item.dart';
import 'package:image_search_app_ver2/domain/repository/image_repository.dart';

class ImageRepositoryImpl implements ImageRepository {
  final PixabayApi _api;

  ImageRepositoryImpl({
    required PixabayApi api,
  }) : _api = api;

  @override
  Future<Result<List<ImageItem>>> getImageItems(String query) async{
    try {
      final json = await _api.getImageApi(query);
      final dto = ImageDto.fromJson(json);

      if (dto.hits == null) {
        return Result.error(Exception('데이터가 없다'));
      }
      return Result.success(dto.hits!.map((e) => e.toImageItem()).toList());
    } catch (e) {
     return  Result.error(Exception(e.toString()));
    }
  }
}

