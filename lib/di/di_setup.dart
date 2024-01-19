import "package:get_it/get_it.dart";
import "package:image_search_app_ver2/data/data_source/image_api.dart";
import "package:image_search_app_ver2/data/repository/image_repository_impl.dart";
import "package:image_search_app_ver2/domain/repository/image_repository.dart";
import "package:image_search_app_ver2/presentation/maim/main_view_model.dart";
final getit = GetIt.instance;

void diSetup(){
  getit.registerSingleton<ImageApi>(ImageApi());
  getit.registerSingleton<ImageRepository>(ImageRepositoryImpl(api: ImageApi()));

  getit.registerFactory<MainViewModel>(() => MainViewModel(imageRepository: getit<ImageRepository>()));
}