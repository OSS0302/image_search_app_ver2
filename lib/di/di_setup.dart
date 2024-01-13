import 'package:get_it/get_it.dart';
import 'package:image_search_app_ver2/data/data_source/pixabay_api.dart';
import 'package:image_search_app_ver2/data/repository/image_item_repository_impl.dart';
import 'package:image_search_app_ver2/domain/repository/image_item_repository.dart';
import 'package:image_search_app_ver2/presentation/main_veiw_model.dart';
final getIt =GetIt.instance;

void diSetup() {
    getIt.registerSingleton<PixabayApi>(PixabayApi());
    getIt.registerSingleton<ImageItemRepository>(ImageRepositoryImpl( api: PixabayApi() ));
    
    getIt.registerFactory<MainViewModel>(() => MainViewModel(  imageItemRepository: getIt<ImageItemRepository>()));
}