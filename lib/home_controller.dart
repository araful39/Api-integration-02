import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController{

@override
  void onInit() {
  postData();
    super.onInit();
  }

  void postData()async{
  http.Response response= await http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if(response.statusCode==201){
    print(response.body);

  }

  }

}