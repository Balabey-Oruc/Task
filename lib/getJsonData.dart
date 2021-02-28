import 'package:http/http.dart' as http;
import 'dart:convert';

getData() async {
  http.Response response= await http.get('https://cdn.fonibo.com/challenges/tasks.json?fbclid=IwAR1uh05ZuAVUmc0RrYMmRj3hVIGbWN1PfB-ZTqHx4FrLyJvl8RFXRaEBLX8');
  if (response.statusCode == 200)
  return jsonDecode(response.body);
  else{
    print('problem');
  }
}