import 'dart:convert';

import 'package:dio/dio.dart';

class ImageApi {
  var apiKey = "20238466-584aff9edc009a9b3f46383fb";
  var baseUrl = "https://pixabay.com/api/";
  var dio = Dio();
  List apiData;

  Future getImages() async {
    Response response = await dio.get(
        '$baseUrl?key=$apiKey&q=yellow+flowers&image_type=photo&pretty=true');

    var data = jsonDecode(response.data);

    print(data['hits']);
  }
}
