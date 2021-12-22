import '../model/apod_model.dart';

abstract class BaseApiService {
  
  Future<ApodModel> getApod(String date);

  Future downloadImage(String url);
}
