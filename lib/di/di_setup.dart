import 'package:get_it/get_it.dart';
import 'package:image_search_app_ver2/data/daa_source/pixabay_api.dart';
import 'package:image_search_app_ver2/data/repository/image_repository_impl.dart';
import 'package:image_search_app_ver2/domain/repository/image_repository.dart';
import 'package:image_search_app_ver2/persentation/main_veiw_model.dart';
final getit = GetIt.instance;

void diSetup() {
    getit.registerSingleton<PixabayApi>(PixabayApi());
    getit.registerSingleton<ImageRepository>(ImageRepositoryImpl(api: PixabayApi()));

    getit.registerFactory<MainViewModel>(() => MainViewModel(imageRepository: getit<ImageRepository>()));
}