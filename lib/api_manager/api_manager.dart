import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islamy/models/radio_model.dart';

class ApiManager {
  static Future<RadioModel> getApiData() async {
    var url = Uri.parse("https://mp3quran.net/api/v3/radios?language=ar");
    http.Response response = await http.get(url);
    var json = jsonDecode(response.body);
    RadioModel radioModel = RadioModel.fromJson(json);
    return radioModel;
  }
}

