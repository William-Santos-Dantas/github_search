
import 'package:get/get_connect.dart';

class RestClient extends GetConnect{

  RestClient(){
    httpClient.baseUrl = 'http://worldtimeapi.org/api/timezone';
  }
  
}