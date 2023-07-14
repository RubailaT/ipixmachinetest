import 'package:http/http.dart' as http;

class Api{
  final String url = 'https://run.mocky.io/v3/b91498e7-c7fd-48bc-b16a-5cb970a3af8a';
  getData(url)async{
    var fullUrl=url;
    return await http.get(
      Uri.parse(fullUrl),
    );
  }
}