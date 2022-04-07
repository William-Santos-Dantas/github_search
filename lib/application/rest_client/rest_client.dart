
import 'package:get/get_connect.dart';

class RestClient extends GetConnect{

  RestClient(){
    httpClient.baseUrl = 'https://api.github.com/';
  }
  
}