import 'package:my_image_app/models/image-model.dart';
import 'package:my_image_app/resources/app-url.dart';

import '../networks/network-api-services.dart';

class ImageServices {
  final _api = NetworkAPiServices();
  Future<ImageData> getImagesServices(
      {required String q, int perPage = 20, required int page}) async {
    final response = await _api
        .getApi("${AppUrl.imageUrl}&q=$q&per_page=$perPage&page=$page");
    return ImageData.fromJson(response);
  }
}
